class Branch < ApplicationRecord
	has_many :appointments
	has_and_belongs_to_many :schedules

end
