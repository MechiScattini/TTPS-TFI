class Appointment < ApplicationRecord
	validates :branch_id, :motive, presence: true
	validates :date, comparison: {greater_than: Date.today}
	validates :comment, presence: true, if: :solved?
	has_and_belongs_to_many :users

	def solved?
		self.solved
	end
	
end
