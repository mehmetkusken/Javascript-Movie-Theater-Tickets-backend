class UsersController < ApplicationController
    
    def create
        if params[:username].length > 0
        user = User.find_or_create_by(username: params[:username])
        render json: user
        end
    end
end
