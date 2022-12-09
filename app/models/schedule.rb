class Schedule < ApplicationRecord
	enum day: [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
end
