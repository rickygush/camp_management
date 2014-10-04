class Response < ActiveRecord::Base
	belongs_to :attendee
	belongs_to :camp
end
