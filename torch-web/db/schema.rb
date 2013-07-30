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

ActiveRecord::Schema.define(:version => 20130730055522) do

  create_table "menter_images", :force => true do |t|
    t.integer  "menter_id",    :null => false
    t.binary   "data"
    t.string   "content_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "menter_images", ["menter_id"], :name => "index_menter_images_on_menter_id"

  create_table "menters", :force => true do |t|
    t.string   "name",                             :null => false
    t.string   "career"
    t.integer  "rate",            :default => 100, :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "hashed_password"
    t.string   "about"
    t.string   "catch_copy"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                               :null => false
    t.integer  "age"
    t.string   "profile"
    t.boolean  "student",         :default => false
    t.string   "hashed_password"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
