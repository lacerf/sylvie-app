class AddDefaultValueToStateAttribute < ActiveRecord::Migration
  def change
    change_column :tickets, :state, :integer, default: 0
  end
end
