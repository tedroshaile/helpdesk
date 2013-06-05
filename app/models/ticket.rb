class Ticket < ActiveRecord::Base
  attr_accessible :content, :name, :user
end
