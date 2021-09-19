class TheatersController < ApplicationController

    def index
        theaters = Theater.all
        render json: theaters
    end

    def create
        theater = Theater.create(theater_params)
        render json: theater
        
    end

    def show
    theater = Theater.find(params[:id])
    render json: theater

    end

    def update

    end

    def destroy
        theater = Theater.find(params[:id])
        theater.destroy
        render json: {message: 'Theater deleted'}
    end

    private

    def theater_params
        params.require(:theater).permit(:name, :adress, :city, :state, :phone, :image, :user_id)
    end

end
