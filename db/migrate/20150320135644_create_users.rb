class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :email, null: false
      table.string :password, null: false
      table.string :first_name, null: true
      table.string :last_name, null: true
    end

    add_index :users, :email, unique: true
  end
end
