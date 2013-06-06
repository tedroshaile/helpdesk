class Ticket < ActiveRecord::Base
  attr_accessible :content, :name, :user

  has_many :ticket_updates
end
