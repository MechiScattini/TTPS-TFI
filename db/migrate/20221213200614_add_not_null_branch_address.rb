class AddNotNullBranchAddress < ActiveRecord::Migration[7.0]
  def change
    change_column_null :Branches, :address, false
  end
end
