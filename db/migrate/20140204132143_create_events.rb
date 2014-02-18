class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :details
      t.datetime :alert_time
      t.datetime :reminder_time

      t.timestamps
    end
    add_index :events, :name
    add_index :events, :alert_time
    add_index :events, :reminder_time
  end
end
