class MoodsController < ApplicationController
    def index
        @moods = Mood.all
        render json: @moods
    end

    def show
        @moods = Mood.find_by(id: params[:id])
        render json: @moods
    end

end
