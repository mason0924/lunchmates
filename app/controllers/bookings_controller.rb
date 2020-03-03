class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new
    # Find the event
    @event = Event.find(params[:event_id])
    @booking.event = @event
    # Find the user
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to dashboard_path, notice: "Your booking has been created..."
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy

    redirect_to dashboard_path
  end


end
