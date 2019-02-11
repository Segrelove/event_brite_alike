class AttendanceMailer < ApplicationMailer
  def welcome_attendee(user)
    @user = user

    @url = 'https://monsite.com/event'

    mail(to:@user.guest.email, subject: 'Merci, tu es bien inscrit !')
  end
end
