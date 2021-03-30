module Api
  module V1
    class GamesController < ApplicationController
      def show
        @game = Game.find(params[:id])
        render json: GameSerializer.new(@game).serialized_json
      end
    end
  end
end
