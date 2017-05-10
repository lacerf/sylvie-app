class Ticket < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :title, :details
end
