require 'rails_helper'

RSpec.describe StopsController do
  let(:valid_file) do
    { file: fixture_file_upload('files/stops.txt', 'text/plain') }
  end

  let(:invalid_file) do
    { file: fixture_file_upload('files/invalid_stops.txt', 'text/plain') }
  end

  describe 'POST create' do
    context 'success' do
      it 'change the number of records in stops table' do
        expect { post :create, params: valid_file }.to change(Stop, :count)
      end
    end

    context 'failure' do
      it "don't change the number of records in stops table" do
        expect { post :create, params: invalid_file }.not_to change(Stop, :count)
      end
    end
  end
end
