class TheatersController < ApplicationController

    def index
        theaters = Theater.all
        render json: theaters.to_json(methods: [:movies])
    end

    def show
        theater = Theater.find_by(id: params[:id])
        # render json: theater
        render json: theater.to_json(methods: [:movies])
    end

end
