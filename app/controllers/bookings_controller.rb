class BookingsController < ApplicationController
  before_action :authenticate_user!


  def create
    @booking = Booking.new(booking_params)
    # Find the event
    @event = event.find(params[:event_id])
    @booking.event = @event
    # Find the user
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: "Your booking has been created..."
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path
  end

  private
    def booking_params
      params.require(:booking).permit(:date)
    end
end
