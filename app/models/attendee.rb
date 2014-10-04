class Attendee < ActiveRecord::Base
	has_many :enrollments
	has_many :cabins, :through => :enrollments
	has_many :camps, :through => :enrollments
	has_many :incidents, dependent: :destroy
	has_many :responses, dependent: :destroy

	def self.like(like)
		if like
			where('f_name LIKE ?', "%#{like}%")
		else
			scoped
		end
	end

	def self.gender(gender)
		if gender
			where('gender = ?', "#{gender}")
		else
			scoped
		end
	end

	def self.role(role)
		if role
			where('role = ?', "#{role}")
		else
			scoped
		end
	end

end
