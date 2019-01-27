# Preview all emails at http://localhost:3000/rails/mailers/meeting_mailer
class MeetingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/meeting_mailer/meeting_schedule
  def meeting_schedule
    MeetingMailer.with(meeting: Meeting.first, user: User.last).meeting_schedule
    #.with(meeting: Meeting.first, user: User.last)
  end

end
