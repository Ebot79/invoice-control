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

ActiveRecord::Schema.define(:version => 20130804184005) do

  create_table "billees", :force => true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.integer  "location_id"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "bills", :force => true do |t|
    t.integer  "billee_id"
    t.float    "total"
    t.date     "ordered"
    t.date     "billed"
    t.date     "paid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.float    "rate"
    t.integer  "location_id"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "hours", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "task_id"
    t.float    "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "number"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "source"
    t.float    "amount"
    t.float    "less"
    t.float    "total"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "residents", :force => true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.integer  "location_id"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "bill_id"
    t.integer  "location_id"
    t.string   "status"
    t.date     "start"
    t.float    "labor"
    t.float    "materials"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
