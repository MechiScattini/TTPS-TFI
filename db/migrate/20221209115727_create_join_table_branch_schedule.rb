class CreateJoinTableBranchSchedule < ActiveRecord::Migration[7.0]
  def change
    create_join_table :branches, :schedules do |t|
      # t.index [:branch_id, :schedule_id]
      # t.index [:schedule_id, :branch_id]
    end
  end
end
