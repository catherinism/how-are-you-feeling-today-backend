class MoodsController < ApplicationController
    def index
        @moods = Mood.all
    end

    def 
        @moods = Mood.find_by(id: params[:id])
    end

end
