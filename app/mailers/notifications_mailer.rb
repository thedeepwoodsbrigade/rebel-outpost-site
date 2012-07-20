class NotificationsMailer < ActionMailer::Base
  default from: "lead@rebel-outpost.com"
  default :to => "lets-talk@rebel-outpost.com"

  def new_message(message)
    @message = message
    mail(:subject => "rebel-outpost.com lead")
  end
end
