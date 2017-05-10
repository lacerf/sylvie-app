class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :details
      t.date :start_date
      t.date :due_date
      t.date :complete_date
      t.date :accepted_date
      t.integer :state
      t.integer :priority

      t.timestamps null: false
    end
  end
end
