require 'test_helper'

class MeetingMailerTest < ActionMailer::TestCase
  test "meeting_schedule" do
    mail = MeetingMailer.meeting_schedule
    assert_equal "Meeting schedule", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
