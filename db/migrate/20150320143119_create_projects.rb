class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |table|
      table.string :name, null: false
      table.text :description, null: true
    end

    add_index :projects, :name, unique: true
  end
end
