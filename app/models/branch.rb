class Branch < ApplicationRecord
	has_many :appointments
	has_and_belongs_to_many :schedules

	def schedules=(schedules)
		schedules.reject(&:blank?)
	end
end
