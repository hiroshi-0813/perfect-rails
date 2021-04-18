class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :ticekts do |t|
      t.references :user
      t.references :event, null: false, foreign_key: true, index: false
      t.string :comment

      t.timestamps
    end
    
    add_index :ticekts, %i[event_id user_id], unique: true
  end
end
