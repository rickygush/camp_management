class Camp < ActiveRecord::Base
	has_many :enrollments
	has_many :cabins, :through => :enrollments
	has_many :attendees, :through => :enrollments

end
