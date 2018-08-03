class EventMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.change.subject
  #
  def change(user, event)
    @user = user
    @event = event
    mail to: @user.email, subject: "参加予定イベントに変更がありました。"
  end
end
