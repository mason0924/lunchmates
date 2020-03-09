class EventsController < ApplicationController

  def index
    @events = policy_scope(Event)
    if params[:location].present? && params[:cuisine].present?
      # Search by the location
      @events = @events.near(params[:location], 10).where(cuisine: params[:cuisine])
    elsif params[:location].present?
      @events = @events.near(params[:location], 10)
    elsif params[:cuisine].present?
      @events = @events.where(cuisine: params[:cuisine])
    end

    if params[:lat].present? && params[:long].present?
      @events = @events.near([params[:lat], params[:long]], 10)
    end

    @geocoded_events = @events.geocoded #returns events with coordinates
    @markers = @geocoded_events.map do |event|
       {
         lat: event.latitude,
         lng: event.longitude,
         infoWindow: render_to_string(partial: "info_window", locals: { event: event }),
        #  image_url: helpers.asset_url('icon_marker.png')
       }
     end


   end

  def show
    @event = Event.find(params[:id])
    @host = @event.user_id
    authorize @event
    @message = Message.new
    # authorize @user
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    authorize @event
    if @event.update(event_params)
      redirect_to dashboard_path
    else
      render :edit
    end
    # Only for update, create and destroy you write here the paths of the buttons
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy

    redirect_to dashboard_path
  end


  private

  def event_params
    params.require(:event).permit(:restaurant_name, :restaurant_address, :restaurant_price_range, :event_name, :description, :date, :spots, :photo)
  end

end
