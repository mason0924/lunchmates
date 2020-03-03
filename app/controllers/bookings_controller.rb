class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @events = Event.where(user: current_user)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    # Find the event
    @event = event.find(params[:event_id])
    @booking.event = @event
    # Find the user
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path, notice: "Your booking has been created..."
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy

    redirect_to bookings_path
  end

  private
    def booking_params
      params.require(:booking).permit(:date)
    end
end
