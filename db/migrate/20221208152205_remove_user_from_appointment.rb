class RemoveUserFromAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :user_id, :integer
  end
end
