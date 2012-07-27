class AddMedalToEvent < ActiveRecord::Migration
  def change
    add_column :events, :medal, :string
  end
end
