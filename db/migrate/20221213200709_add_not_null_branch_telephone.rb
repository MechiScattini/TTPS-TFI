class AddNotNullBranchTelephone < ActiveRecord::Migration[7.0]
  def change
    change_column_null :Branches, :telephone, false
  end
end
