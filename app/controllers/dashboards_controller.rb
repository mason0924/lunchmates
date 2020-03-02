class DashboardsController < ApplicationController
    before_action :authenticate_user!

  def index
    @bookings = Booking.all
    @events = Event.where(user_id: current_user])
  end

  def show
    @booking = Booking.find(params[:id])
  end

end
