class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :day
      t.time :time_from
      t.time :time_to

      t.timestamps
    end
  end
end
