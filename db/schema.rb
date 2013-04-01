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

ActiveRecord::Schema.define(:version => 20130314181506) do

  create_table "contest_entries", :force => true do |t|
    t.integer  "contest_id"
    t.integer  "contestant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "contest_entries", ["contest_id"], :name => "index_contest_entries_on_contest_id"
  add_index "contest_entries", ["contestant_id"], :name => "index_contest_entries_on_contestant_id"

  create_table "contest_optins", :force => true do |t|
    t.integer  "contest_id"
    t.integer  "optinpartner_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "contest_optins", ["contest_id"], :name => "index_contest_optins_on_contest_id"
  add_index "contest_optins", ["optinpartner_id"], :name => "index_contest_optins_on_optinpartner_id"

  create_table "contest_prizes", :force => true do |t|
    t.integer  "contest_id"
    t.integer  "prize_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contest_prizes", ["contest_id"], :name => "index_contest_prizes_on_contest_id"
  add_index "contest_prizes", ["prize_id"], :name => "index_contest_prizes_on_prize_id"

  create_table "contest_winners", :force => true do |t|
    t.integer  "contestant_id"
    t.integer  "prize_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "contest_winners", ["contestant_id"], :name => "index_contest_winners_on_contestant_id"
  add_index "contest_winners", ["prize_id"], :name => "index_contest_winners_on_prize_id"

  create_table "contestants", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "firstentered"
    t.datetime "lastentered"
    t.string   "zipcode"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "contests", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.datetime "startdate"
    t.datetime "enddate"
    t.text     "rules"
    t.text     "css"
    t.text     "promotion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "optin_contestants", :force => true do |t|
    t.integer  "contest_id"
    t.integer  "optinpartner_id"
    t.integer  "contestant_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "optinpartners", :force => true do |t|
    t.string   "name"
    t.text     "label"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prizes", :force => true do |t|
    t.string   "prize"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
