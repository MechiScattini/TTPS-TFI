class Schedule < ApplicationRecord
	validates :day, :time_from, :time_to, presence: true
	enum day: [:Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday]
	has_and_belongs_to_many :branches
end
