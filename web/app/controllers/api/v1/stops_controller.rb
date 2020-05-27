module Api
  module V1
    class StopsController < Api::BaseController
      def nearest
        if valid_params?
          nearest_stops = Stop.ordered_by_distance(
            params[:longitude], params[:latitude]
          ).limit(5)
          render json: StopSerializer.new(nearest_stops).serialized_json
        else
          render json: { status: 400, message: 'invalid params' },
                 status: :bad_request
        end
      end

      private

      def valid_params?
        true if Float(params[:longitude]) && Float(params[:latitude]) rescue false
      end
    end
  end
end
