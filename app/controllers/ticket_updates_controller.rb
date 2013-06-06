class TicketUpdatesController < ApplicationController
# before_filter :find_ticket_update

def index
  @ticket_updates = TicketUpdate.all
  end

def create
  @ticket_update = @ticket.ticket_updates.build(params[:ticket_update])

  end

def show
  @ticket_updates = TicketUpdate.last
end

def new
  # @ticket_update = @ticket.ticket_updates.build
  @ticket_update = TicketUpdate.new
end

def edit
  @ticket_update = TicketUpdate.find(params[:id])
  end

def update
    @ticket_update = TicketUpdate.find(params[:id])
    @ticket_update.update_attributes(params[:ticket_update])
    redirect_to @ticket_update
end
# def find_ticket_update
#   @ticket_update = @ticket.ticket_updates.find(params[:id])
# end

end
