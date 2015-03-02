class Attend < ActiveRecord::Base
	# player_id, training_event_id, attendance and excuse 
	
	attr_accessible :training_event_id, :player_id, :attendance, :excuse

  validates :player_id, presence: true
  validates :training_event_id, presence: true

	belongs_to :training_event
	belongs_to :player
	
end



