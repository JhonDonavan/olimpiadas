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

ActiveRecord::Schema.define(version: 2018_11_10_121707) do

  create_table "atleta", force: :cascade do |t|
    t.string "atleta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competicaos", force: :cascade do |t|
    t.string "competicao"
    t.date "dt_ini"
    t.date "dt_fim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "atleta_id"
    t.integer "competicao_id"
    t.float "value_1"
    t.float "value_2"
    t.float "value_3"
    t.text "unidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atleta_id"], name: "index_scores_on_atleta_id"
    t.index ["competicao_id"], name: "index_scores_on_competicao_id"
  end

end
