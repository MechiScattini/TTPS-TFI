json.extract! schedule, :id, :day, :time_from, :time_to, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
