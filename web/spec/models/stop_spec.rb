require 'rails_helper'

RSpec.describe Stop, type: :model do
  it { is_expected.to validate_presence_of(:stop_lon) }
  it { is_expected.to validate_presence_of(:stop_lat) }
  it { should validate_uniqueness_of(:stop_lon).scoped_to(:stop_lat) }

  describe '.ordered_by_distance' do
    stops = Stop.order(:id).first(5)

    ordered_stops = Stop.ordered_by_distance(
      stops.first.stop_lon, stops.first.stop_lat
    ).limit(5)

    it { expect(ordered_stops).to eq(stops) }
  end
end
