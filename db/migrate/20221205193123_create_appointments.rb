class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :motive
      t.boolean :solved
      t.string :comment

      t.timestamps
    end
  end
end
