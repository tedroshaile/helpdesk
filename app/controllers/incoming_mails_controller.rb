class IncomingMailsController < ApplicationController
  require 'mail'
  skip_before_filter :verify_authenticity_token

  def create
    message = Mail.new(params[:message])
    # Rails.logger.log Logger::INFO, message.subject #print the subject to the logs
    # Rails.logger.log Logger::INFO, message.body.decoded #print the decoded body to the logs

    tid = params[:headers][:Subject].firstNumber
    @ticket = Ticket.find_by_id(tid)
    @ticket_update = TicketUpdate.new
    # @ticket.name = params[:headers][:Subject]
    @ticket_update.content = params[:plain]
    @ticket_update.user = params[:headers][:From]
    @ticket_update.ticket_id = tid
    @ticket_update.save

    # Do some other stuff with the mail message

    render :text => 'success', :status => 200 # a status of 404 would reject the mail
  end

  def firstNumber
    self[/\d+/]
  end


end
