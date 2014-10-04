class Cabin < ActiveRecord::Base
	has_many :enrollments
	has_many :camps, :through => :enrollments
	has_many :attendees, :through => :enrollments
end
