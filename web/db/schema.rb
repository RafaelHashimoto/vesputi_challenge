# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_23_231144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "stops", force: :cascade do |t|
    t.string "stop_id"
    t.string "level_id"
    t.string "stop_name"
    t.float "stop_lat", null: false
    t.float "stop_lon", null: false
    t.integer "location_type"
    t.string "parent_station"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stop_lat", "stop_lon"], name: "index_stops_on_stop_lat_and_stop_lon", unique: true
  end

end
