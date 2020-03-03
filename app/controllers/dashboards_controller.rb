class DashboardsController < ApplicationController
    # before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking)
    @events = Event.where(user_id: current_user[params[:id]])
  end

  def event
    @hosting_events = current_user.events
    @joining_events = current_user.bookings
  end

  def show
    @booking = Booking.where(user_id: current_user[params[:id]])
    @event =Event.where(user_id: current_user[params[:id]])
  end
end
