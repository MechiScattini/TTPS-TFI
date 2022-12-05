class Appointment < ApplicationRecord
	validates :branch_id, :motive, presence: true
	validates :date, comparison: {greater_than: Date.today}
	belongs_to :user
end
