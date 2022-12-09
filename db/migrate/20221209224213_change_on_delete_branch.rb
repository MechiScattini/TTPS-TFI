class ChangeOnDeleteBranch < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :users, column: :branch_id
    add_foreign_key :users, :branches, null: true, column: :branch_id, on_delete: :nullify
  end
end
