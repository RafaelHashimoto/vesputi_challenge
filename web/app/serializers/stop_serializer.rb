class StopSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :stop_id, :level_id, :stop_name, :stop_lat, :stop_lon
end
