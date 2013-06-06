class TicketUpdate < ActiveRecord::Base
  belongs_to :ticket
  attr_accessible :content, :user
end
