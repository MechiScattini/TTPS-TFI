class Appointment < ApplicationRecord
	validates :branch_id, :motive, presence: true
	validates :date, comparison: {greater_than: Date.today}
	has_and_belongs_to_many :users
end
