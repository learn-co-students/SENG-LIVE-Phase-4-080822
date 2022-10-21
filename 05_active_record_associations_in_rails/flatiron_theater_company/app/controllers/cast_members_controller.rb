class CastMembersController < ApplicationController
    def index
        render json: CastMember.all, status: :ok
    end 

    def show
        render json: CastMember.find(params[:id]), status: :ok
    end 
end
