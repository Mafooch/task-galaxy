# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

# Challenge notes:
# instructions are ambiguous. e.g. must a task be assigned to a projct? I
# can well imagine tasks that haven't yet been slotted for a project. If so,
# may a task that doesn't belong to a project be assigned to a user nonetheless?
# Additionally, may a task be unnassigned to a user? This scenario seems entirely
# plausible as well.

ActiveRecord::Schema.define(version: 20150320144114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.integer "user_id",    null: false
    t.integer "project_id", null: false
  end

  add_index "assignments", ["user_id", "project_id"], name: "index_assignments_on_user_id_and_project_id", unique: true, using: :btree

  create_table "projects", force: true do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "projects", ["name"], name: "index_projects_on_name", unique: true, using: :btree

  create_table "tasks", force: true do |t|
    t.string  "name",        null: false
    t.string  "description"
    t.date    "due_date"
    t.integer "project_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string "email",      null: false
    t.string "password",   null: false
    t.string "first_name"
    t.string "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
