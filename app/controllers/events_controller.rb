class EventsController < ApplicationController
  #this show events without logged in :-D
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = policy_scope(Event)
    if params[:query].present?
      @events = @events.near(params[:query], 10)
    elsif params[:lat].present? && params[:long].present?
      @events = @events.near([params[:lat], params[:long]], 10)
    end
    @geocoded_events = @events.geocoded #returns events with coordinates

    if params[:cuisine].present?
      @events = @events.where(cuisine: params[:cuisine])
    end

    # select future events from events
    @future_events = @events.where("start_time >= current_timestamp")

    # order time in descending order, latest shown first
    @future_events = @future_events.order(start_time: :asc)

    if params[:show_past].present?
      # select past events from events
      @past_events = @events.where("start_time < current_timestamp")

      # order time in descending order, latest shown first
      @past_events = @past_events.order(start_time: :desc)
    end

    # map only future events
    @markers = @future_events.map do |event|
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
    @booking = Booking.find_by(user: current_user, event: @event)
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

  def lucky
    # TODO: filter out past event, if no event, should show "sorry no event" message
    # select only those users with preference
    @event = Event.where(cuisine: current_user.preference)

    # count total results in query
    count = @event.count

    # replace query with all, as no events with preference type
    if count == 0
      @event = Event
      count = @event.count
    end


    # generate random number between 0 to count
    offset = rand(count)

    # select the first result with offset
    @event = @event.offset(offset).first

    authorize @event
    @user = @event.user # The person you can sit next to :)
  end

  private

  def event_params
    params.require(:event).permit(:restaurant_name, :restaurant_address, :restaurant_price_range, :event_name, :description, :start_time, :end_time, :spots, photos: [])
  end

end
