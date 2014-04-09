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

ActiveRecord::Schema.define(version: 20140407080535) do

  create_table "answer_resources", force: true do |t|
    t.integer  "answer_id"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: true do |t|
    t.string   "title"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score",       default: 0
  end

  create_table "categories", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaires", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "row_order",   default: 0
    t.integer  "category_id"
    t.string   "heading"
  end

  create_table "resources", force: true do |t|
    t.string  "url"
    t.string  "title"
    t.string  "resource_type"
    t.integer "score",         default: 0
    t.string  "external_id"
  end

  create_table "responses", force: true do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.integer  "questionnaire_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.text     "body"
    t.text     "intro"
    t.integer  "score_min"
    t.integer  "score_max"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end