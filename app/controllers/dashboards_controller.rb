class DashboardsController < ApplicationController
    # before_action :authenticate_user!

  def show
    @bookings = current_user.bookings
    @events = current_user.events
    skip_authorization
  end
end
