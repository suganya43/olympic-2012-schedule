class Event < ActiveRecord::Base
  belongs_to :event
  attr_accessible :date, :name, :participants, :sport_id, :status, :time, :venue, :winner
end
