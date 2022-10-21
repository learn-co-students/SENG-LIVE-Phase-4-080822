class UsersController < ApplicationController
    def show 
        user = User.find(params[:id])
        render json: user, status: :ok
    end 

    def create
        byebug
        user = User.create!(user_params) 
        byebug
        render json: user, status: :created
    end 

    private 

    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end 
end
