class Ticket < ActiveRecord::Base
  validates_presence_of :title, :details, :start_date, :due_date 
end
