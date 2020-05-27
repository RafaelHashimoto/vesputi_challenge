class Stop < ApplicationRecord
  validates :stop_lon, presence: true, uniqueness: { scope: :stop_lat }
  validates :stop_lat, presence: true

  scope :ordered_by_distance, ->(lon, lat) {
    order(
      Arel.sql(
        "ST_MakePoint(stop_lon, stop_lat) <-> ST_MakePoint(#{lon}, #{lat})"
      )
    )
  }
end
