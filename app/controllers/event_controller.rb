
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

#-- To retrive the Events Schedule.
def sport_events
  puts "suganya"
  puts @sport = Sport.find(params[:id])
  puts @events = Event.find_all_by_sport_id(params[:id])
  puts @events.inspect
end

#-- To edit the event
def event_edit
 @event = Event.where(:id=>params[:id])
 unless @event.blank? || @event.nil?
 @participant_id = @event.first.participants.split(',').map{|x|x.to_i} unless @event.first.participants.blank?
 @gold_winner = Country.find_by_id(@event.first.winner.split(',')[0].to_i) unless @event.first.winner.blank?
 @silver_winner = Country.find_by_id(@event.first.winner.split(',')[1].to_i) unless @event.first.winner.blank?
 @bronze_winner = Country.find_by_id(@event.first.winner.split(',')[2].to_i) unless @event.first.winner.blank?
 end
 
end

#-- To add the participating and the winning country for the event.
def add_winner

if !params[:id].nil?
   @event = Event.find(params[:id])
   @event.participants= params[:country].join(',') unless params[:country].nil?
   
   @event.winner = params[:country_gold][:country2] + "," +  params[:country_silver][:country2] + "," +  params[:country_bronze][:country2]
   @event.update_attributes(:participants=>@event.participants,:winner=>@event.winner)
   flash[:notice]="Winner updated succesfully"
   redirect_to :controller=>"event",:action=>"event_edit",:id=>params[:id]
end

end
end
