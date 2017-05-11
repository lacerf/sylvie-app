class Ticket < ActiveRecord::Base
  enum state: { 'Submitted': 0, 'Executing': 1, 'Waiting Review': 2, 
                'Reviewing': 3, 'Rejected': 4, 'Completed': 5 }
  enum priority: { 'Critical': 0, 'High': 1, 'Moderate': 2, 'Low': 3, 'Trivial': 4 }
  belongs_to :user
  validates_presence_of :title, :details
  
  def row_priority(p)
    return 'danger' if p == 'Critical'
    return 'warning' if p == 'High'
  end
  
  def row_class(t_state, t_priority)
    return t_state == 'Completed' ? 'success' : row_priority(t_priority)
  end
  
  def owner_name(ticket_uid)
    if ticket_uid
      usr = User.find(ticket_uid)
      return usr.full_name
    end
  end
  
end
