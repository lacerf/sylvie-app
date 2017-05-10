class Ticket < ActiveRecord::Base
  validates_presence_of :title, :details
end
