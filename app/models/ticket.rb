class Ticket < ActiveRecord::Base
  enum state: { 'To Do': 0, 'Doing': 1, 'Complete': 2 }
  enum priority: { 'Critical': 0, 'High': 1, 'Moderate': 2, 'Low': 3, 'Trivial': 4 }
  belongs_to :user
  validates_presence_of :title, :details
  
  def row_priority(p)
    return 'danger' if p == 'Critical'
    return 'warning' if p == 'High'
  end
  
  def row_class(t_state, t_priority)
    return t_state == 'Complete' ? 'success' : row_priority(t_priority)
  end
  
  def row_class_warning(t_due_date, t_state)
    return 'success' if t_state == 'Complete'
    return 'danger' if (Date.today) > t_due_date
    return 'warning' if (Date.today + 2) >= t_due_date
  end
  
  def owner_name(ticket_uid)
    if ticket_uid
      usr = User.find(ticket_uid)
      return usr.full_name
    end
  end
  
end
