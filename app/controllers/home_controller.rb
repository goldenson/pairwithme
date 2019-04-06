class HomeController < ApplicationController
  def index
    return unless current_user

    calendar = GoogleCalendar.new(current_user)
    @events = calendar.fetch_events
  end

  def terms
  end

  def privacy
  end
end
