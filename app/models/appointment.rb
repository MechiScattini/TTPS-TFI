class Appointment < ApplicationRecord
	validates :branch_id, :motive, :time, presence: true
	validates :date, comparison: {greater_than: Date.today}
	validates :comment, presence: true, if: :solved?
	validate :valid_date_time?, on: :create
	#validate :valid_time?, on: :create
	has_and_belongs_to_many :users
	belongs_to :branch

	def solved?
		self.solved
	end

	def schedules
		if self.branch
			self.branch.schedules
		else
			[]
		end
	end

	def valid_date_time?
		if self.date != nil and self.time != nil
			if check_date
				if check_time
					true
				else
					self.errors.add(:time, "cannot be #{self.time.strftime "%H:%M"} it must be between the time from the schedules.")
				end
			else
				self.errors.add(:date, "cannot be #{self.date.strftime('%A')} must be a day from the schedules.")
			end
		else
			false
		end
	end

	def check_date
			@branch_schedules = Schedule.all.select{|s| s.branches.select{|b| b.id==self.branch_id}.any?}
    	@branch_schedules.map{|s| s.day}.include?self.date.strftime('%A')
	end

	def check_time
			# trae los schedules de la branch correspondiente
			@branch_schedules = Schedule.all.select{|s| s.branches.select{|b| b.id==self.branch_id}.any?}
			# trae la schedule del dia seleccionado
			@schedule_from_date = @branch_schedules.select{|s| s.day ==self.date.strftime('%A')}.first
			# se fija que la hora del horarios seleccionado este entre las horas del schedule
			self.time.hour.between?(@schedule_from_date.time_from.hour, @schedule_from_date.time_to.hour)
	end

end
