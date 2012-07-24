# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

country = Country.create([{name:'India'},{name:'Afghanistan'},{name:'London'}])
sport = Sport.create([{name:'Archery'},{name:'Athletic'},{name:'Badminton'},{name:'Hockey'}])
evnt = Event.create([{event_name:'Mens individual',sport_id:1,round_name:'first',date:'2001-09-28',time:'03:00:00',venue:'London'},{event_name:'Wo-Mens individual',sport_id:2,round_name:'first',date:'2001-09-28',time:'03:00:00',venue:'London'},{event_name:'Mens Team',sport_id:3,round_name:'first',date:'2001-09-28',time:'03:00:00',venue:'London'},{event_name:'Wo-Mens Team',sport_id:4,round_name:'first',date:'2001-09-31',time:'03:00:00',venue:'London'}])
