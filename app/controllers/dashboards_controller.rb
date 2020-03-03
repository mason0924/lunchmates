class DashboardsController < ApplicationController
    # before_action :authenticate_user!

  def dashboard
    @bookings = Booking.all
    @events = Event.where(user_id: current_user[params[:id]])
  end

  def event
    @hosting_events = current_user.events
    @joining_events = current_user.bookings
  end
end
