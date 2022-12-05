json.extract! appointment, :id, :date, :time, :motive, :solved, :comment, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
