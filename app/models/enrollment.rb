class Enrollment < ActiveRecord::Base
	belongs_to :camp
	belongs_to :cabin
	belongs_to :attendee
end
