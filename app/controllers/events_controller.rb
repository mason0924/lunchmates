class EventsController < ApplicationController

  def index
    @events = policy_scope(Event)
  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save!
      redirect_to event_path(@event)
    else
      render :new
    end
  end


  private

  def event_params
    params.require(:event).permit(:restaurant_name, :restaurant_address, :restaurant_price_range, :event_name, :description, :date, :spots)
  end

end
