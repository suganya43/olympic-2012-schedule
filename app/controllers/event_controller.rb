
class EventController < ApplicationController

def index
   
end

#-- To retrive all the Sports from Backend.
def sports
  @sports = Sport.find(:all)
	  respond_to do |format|
		format.html # show.html.erb
		format.json  { render :json => @sports }
	  end
end

#-- To retrive the Countries and its image.
def country
  @countries = Country.find(:all)
	  respond_to do |format|
		format.html # show.html.erb
		format.json  { render :json => @countries }
	  end
end

#-- To retrive the Events Schedule.
def events
  @events = Event.find(:all)
	  respond_to do |format|
		format.html # show.html.erb
		format.json  { render :json => @events }
	  end
end

#-- To edit the event
def event_edit
puts "&&&&&&&&&&&&&&&&&&&&&&#{params[:id]}"
 @event = Event.where(:id=>params[:id])
 puts @event.inspect
end

end
