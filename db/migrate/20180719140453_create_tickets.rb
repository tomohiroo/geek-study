class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
      t.text :comments

      t.timestamps
    end
  end
end
