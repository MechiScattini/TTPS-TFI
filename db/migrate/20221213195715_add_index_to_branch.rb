class AddIndexToBranch < ActiveRecord::Migration[7.0]
  def change
    add_index :Branches, :name, unique:true
  end
end
