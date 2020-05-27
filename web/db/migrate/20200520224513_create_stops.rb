class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.string :stop_id
      t.string :level_id
      t.string :stop_name
      t.float :stop_lat, precision: 10, scale: 6, null: false
      t.float :stop_lon, precision: 10, scale: 6, null: false
      t.integer :location_type
      t.string :parent_station
      t.timestamps
    end
  end
end
