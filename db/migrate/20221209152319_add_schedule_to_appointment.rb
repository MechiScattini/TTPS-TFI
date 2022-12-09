class AddScheduleToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :schedule, null: false, foreign_key: true
  end
end
