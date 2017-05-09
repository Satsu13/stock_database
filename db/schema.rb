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

ActiveRecord::Schema.define(version: 20170506175021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arguments", force: :cascade do |t|
    t.float    "value"
    t.integer  "simulation_id"
    t.integer  "parameter_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["parameter_id"], name: "index_arguments_on_parameter_id", using: :btree
    t.index ["simulation_id"], name: "index_arguments_on_simulation_id", using: :btree
  end

  create_table "arguments_design_axis", id: false, force: :cascade do |t|
    t.integer "argument_id",   null: false
    t.integer "design_axi_id", null: false
    t.index ["argument_id", "design_axi_id"], name: "index_arguments_design_axis_on_argument_id_and_design_axi_id", unique: true, using: :btree
  end

  create_table "design_axis", force: :cascade do |t|
    t.string   "name"
    t.integer  "parameter_id"
    t.integer  "version_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["parameter_id"], name: "index_design_axis_on_parameter_id", using: :btree
    t.index ["version_id"], name: "index_design_axis_on_version_id", using: :btree
  end

  create_table "mature_investments", force: :cascade do |t|
    t.integer  "simulation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["simulation_id"], name: "index_mature_investments_on_simulation_id", using: :btree
  end

  create_table "mature_investments_stock_days", id: false, force: :cascade do |t|
    t.integer "mature_investment_id", null: false
    t.integer "stock_day_id",         null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simulations", force: :cascade do |t|
    t.integer  "version_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["version_id"], name: "index_simulations_on_version_id", using: :btree
  end

  create_table "stock_days", force: :cascade do |t|
    t.float    "value"
    t.date     "date"
    t.integer  "stock_history_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["stock_history_id"], name: "index_stock_days_on_stock_history_id", using: :btree
  end

  create_table "stock_histories", force: :cascade do |t|
    t.string   "ticker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.integer  "number"
    t.integer  "model_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_versions_on_model_id", using: :btree
  end

  add_foreign_key "arguments", "parameters"
  add_foreign_key "arguments", "simulations"
  add_foreign_key "design_axis", "parameters"
  add_foreign_key "design_axis", "versions"
  add_foreign_key "mature_investments", "simulations"
  add_foreign_key "simulations", "versions"
  add_foreign_key "stock_days", "stock_histories"
  add_foreign_key "versions", "models"
end
