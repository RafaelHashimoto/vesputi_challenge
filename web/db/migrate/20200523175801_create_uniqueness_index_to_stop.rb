class CreateUniquenessIndexToStop < ActiveRecord::Migration[6.0]
  def change
    add_index :stops, [:stop_lat, :stop_lon], unique: true
  end
end
