class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
	  t.string :round_name
      t.integer :sport_id
      t.date :date
      t.time :time
      t.string :venue
      t.text :participants
      t.text :winner
      t.string :status

      t.timestamps
    end
  end
end
