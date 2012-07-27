class ChangeDataTypeForDateEvent < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.change :date, :string
    end
  end

  def self.down
    change_table :events do |t|
      t.change :date, :string
    end
  end
end
