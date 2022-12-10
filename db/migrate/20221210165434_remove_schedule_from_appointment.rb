class RemoveScheduleFromAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :Appointments, :schedule_id
  end
end
