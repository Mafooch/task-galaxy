class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |table|
      table.integer :user_id, null: false
      table.integer :project_id, null: false
    end
    add_index :assignments, [:user_id, :project_id], unique: true
  end
end
