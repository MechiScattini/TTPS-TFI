class AddNotNullToScheduleTimeTo < ActiveRecord::Migration[7.0]
  def change
    change_column_null :Schedules, :time_to, false
  end
end
