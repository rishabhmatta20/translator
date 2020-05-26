class NotifyAjackusMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def notify(user)
    @user = user
    mail(to: ENV['DEFAULT_EMAIL'], subject: "New Message")
  end
end
