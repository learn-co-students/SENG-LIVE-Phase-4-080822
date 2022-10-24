class UsersController < ApplicationController
    # skip_before_action 

    def show 
        # user = User.find(params[:id])
        byebug
        render json: current_user, status: :ok
    end 

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end 
    
    private 

    def user_params
        params.permit(:name, :email, :password)
    end 
end
