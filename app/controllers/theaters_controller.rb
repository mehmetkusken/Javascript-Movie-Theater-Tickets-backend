class TheatersController < ApplicationController

    def index
        theaters = Theater.all
        render json: theaters
    end

    def create
        theater = Theater.create(theater_params)
        render json: theater
        
    end

    private

    def theater_params
        params.require(:theater).permit(:name, :adress, :city, :state, :phone, :image, :user_id)
    end

end
