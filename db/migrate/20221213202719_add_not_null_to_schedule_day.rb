class AddNotNullToScheduleDay < ActiveRecord::Migration[7.0]
  def change
    change_column_null :Schedules, :day, false
  end
end
