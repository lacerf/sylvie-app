ActiveAdmin.register Ticket do
permit_params :title, :details, :start_date, :due_date, :state, :priority, :complete_date, :accepted_date

  index do
    selectable_column
    id_column
    column :title
    column :details
    column :start_date
    column :due_date
    column :state
    column :priority
    column :complete_date
    column :accepted_date
    actions
  end

  filter :id_column
  filter :title
  filter :state
  filter :priority

  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :details
      f.input :start_date
      f.input :due_date
      f.input :state
      f.input :priority
      f.input :complete_date
      f.input :accepted_date
      
    end
    f.actions
  end

end
