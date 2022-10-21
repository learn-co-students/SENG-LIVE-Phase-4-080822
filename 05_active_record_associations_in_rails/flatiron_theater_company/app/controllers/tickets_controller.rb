class TicketsController < ApplicationController
    def index
        render json: Ticket.all, status: :ok
    end 

    def show
        render json: Ticket.find(params[:id]), status: :ok
    end 
end
