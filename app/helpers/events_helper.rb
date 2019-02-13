module EventsHelper
  def is_user_going
    Attendance.find_by(guest_id: current_user, event_id: params[:id]).nil?
  end
end
