class TicketMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.ticket_update.subject
  #
  def ticket_update
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def test_mailer
mail(:to => “theodore.haile@gmail.com”, :subject => “New friend added”)
end
end
