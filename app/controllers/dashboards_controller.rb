class DashboardsController < ApplicationController
    before_action :authenticate_user!

  def index
    @bookings = Booking.all
    @events = Event.where(user_id: current_user])
  end

  def dashboard
    @hosting_events = current_user.events
    @joining_events = current_user.bookings
  end

end
