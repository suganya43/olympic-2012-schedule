require 'roo'
require 'rubygems'

namespace :olympic_sports do
  desc "olympic sports"
  task :import => :environment do
 x1 = Excel.new("#{Rails.root}/public/Olympic.xls")
    x1.default_sheet = x1.sheets[0]
    2.upto(x1.last_row) do |line|      
      sname = x1.cell(line,'A')
	  snametemp = sname.strip
      name = Sport.find_by_name(snametemp)  
  
      if (name==nil)
        Sport.create(:name=>snametemp)
      else
      end
    end
    
  end
end

namespace :olympic_countries do
  desc "olympic countries"
  task :import => :environment do
 x1 = Excel.new("#{Rails.root}/public/Countries.xls")
    x1.default_sheet = x1.sheets[0]
    2.upto(x1.last_row) do |line|
      sname = x1.cell(line,'A')
      
     
        Country.create(:name=>sname)
      
    end

  end
end

namespace :olympic_data do
  desc "Import the Olympic schedule"
  task :import => :environment do
  x1 = Excel.new("#{Rails.root}/public/Olympic.xls")
  x1.default_sheet = x1.sheets[0]
  2.upto(x1.last_row) do |line|
	Sports = x1.cell(line,'A')
	snametemp = Sports.strip
    p sports = Sport.find_by_name(snametemp)  
	p name = x1.cell(line,'B')  
	p Round = x1.cell(line,'C')
	p d = x1.cell(line,'D')
	end_date = x1.cell(line,'E')
	p t = x1.cell(line,'F') 
	if t!="-" 
	tempt = Time.at(t).utc.strftime("%I:%M%p")
	else
	tempt = "-"
	end
	
    p Venue = x1.cell(line,'G')
    p Medal = x1.cell(line,'H')
	medal = Medal.gsub("-", " ") unless Medal.nil?
    Event.create(:sport_id=>sports.id,:event_name=>name,:round_name=>Round,:date=>d,:time=>tempt,:venue=>Venue,:medal=>Medal,:end_date=>end_date)
	end
   end
end
  
