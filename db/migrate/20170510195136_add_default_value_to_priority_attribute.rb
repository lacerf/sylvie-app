class AddDefaultValueToPriorityAttribute < ActiveRecord::Migration
  def change
    change_column :tickets, :priority, :integer, default: 0
  end
end
