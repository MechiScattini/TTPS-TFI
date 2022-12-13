class Branch < ApplicationRecord
	validates :address, :telephone, :name, presence: true
	validates :name, uniqueness: true
	has_many :appointments
	has_and_belongs_to_many :schedules

	def personal
		User.all.select{|u| u.branch_id==self.id}
	end

end
