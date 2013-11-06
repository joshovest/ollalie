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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131105220313) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "campaign_types", :force => true do |t|
    t.string   "name"
    t.integer  "campaign_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "location"
    t.integer  "type"
    t.integer  "experiences"
    t.decimal  "revenue"
    t.text     "segments"
    t.text     "success_events"
    t.text     "learnings"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "ideas", :force => true do |t|
    t.string   "name"
    t.integer  "submitter_id"
    t.text     "location"
    t.text     "potential_learnings"
    t.integer  "priority"
    t.integer  "impact"
    t.integer  "revenue_impact"
    t.integer  "technical_impact"
    t.integer  "users_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "ideas_users", :id => false, :force => true do |t|
    t.integer "idea_id"
    t.integer "user_id"
  end

  add_index "ideas_users", ["idea_id", "user_id"], :name => "index_ideas_users_on_idea_id_and_user_id", :unique => true

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.integer  "creator_id"
    t.integer  "assignee_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "status"
    t.text     "content"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "access_level"
    t.integer  "account_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
