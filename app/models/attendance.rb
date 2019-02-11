class Attendance < ApplicationRecord
  after_create :welcome_attendee_send

  belongs_to :event
  belongs_to :guest, class_name: "User"

  def welcome_attendee_send
      AttendanceMailer.welcome_attendee(self).deliver_now
  end
end
