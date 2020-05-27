require 'rails_helper'

RSpec.describe Api::V1::StopsController do
  let(:valid_coordinates) do
    { longitude: -6.07906897916885, latitude: 53.3669505773483 }
  end

  let(:invalid_coordinates) do
    { longitude: 'text', latitude: 'text' }
  end

  describe 'GET nearest' do
    context 'success' do
      it 'return json with closest stops' do
        get :nearest, params: valid_coordinates
        expect(response).to be_successful
        expect(JSON.parse(response.body)['data'].size).to eq(5)
      end
    end

    context 'failure' do
      it 'return json with error message' do
        get :nearest, params: invalid_coordinates
        expect(response.status).to eq(400)
        expect(JSON.parse(response.body)['message']).to eq('invalid params')
      end
    end
  end
end