# frozen_string_literal: true
class GoogleCalendar
  def initialize(user)
    @service ||= Google::Apis::CalendarV3::CalendarService.new
    @service.authorization = Service.find_by(user_id: user.id).access_token
    @user = user
  end

  def fetch_events
    calendar_id = 'primary'
    response = @service.list_events(
      calendar_id,
      max_results: 10,
      single_events: true,
      order_by: 'startTime',
      time_min: DateTime.now.rfc3339
    )

    response.items
  end
end
