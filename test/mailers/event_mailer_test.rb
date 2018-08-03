require 'test_helper'

class EventMailerTest < ActionMailer::TestCase
  test "change" do
    mail = EventMailer.change
    assert_equal "Change", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
