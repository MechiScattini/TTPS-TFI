class Branch < ApplicationRecord
	has_many :appointments
	has_and_belongs_to_many :schedules

	def personal
		User.all.select{|u| u.branch_id==self.id}
	end

end
