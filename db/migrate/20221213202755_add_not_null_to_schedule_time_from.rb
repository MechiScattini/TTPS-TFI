class AddNotNullToScheduleTimeFrom < ActiveRecord::Migration[7.0]
  def change
    change_column_null :Schedules, :time_from, false
  end
end
