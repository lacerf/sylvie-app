class StaticController < ApplicationController
  def homepage
    @in_todo = Ticket.where(state: 0)
    @in_doing = Ticket.where(state: 1)
    @in_complete = Ticket.where(state: 2)
    
    first_date = Date.today
    second_date = Date.today + 2
    @close_to_due_date = Ticket.where(:due_date => first_date..second_date) 
    
    @overdue_tickets = Ticket.where('due_date < ?', Date.today)
    
  end
  private
  
  def close_to_due
 
  end
  
  
end