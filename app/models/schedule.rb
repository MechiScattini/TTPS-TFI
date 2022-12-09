class Schedule < ApplicationRecord
	enum day: [:Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday]
	has_and_belongs_to_many :branches
	has_many :appointments
end
