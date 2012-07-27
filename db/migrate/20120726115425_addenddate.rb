class Addenddate < ActiveRecord::Migration
  def change
    
	remove_column :events, :date
	add_column :events, :date, :date
	add_column :events, :end_date, :date
  end
  
end
