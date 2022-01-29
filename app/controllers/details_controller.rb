class DetailsController < ApplicationController

    def index
        @details = Detail.all
        render json: @details
    end

    def create
        @detail = Detail.create(detail_params)
        if @detail.errors.any?
            render json: @joke.errors, status: 422
        else 
            render json: @joke, status:201
        end

    end

    private 

    def detail_params
        params.require(:detail).permit(:first_name, :last_name, :phone_number, :street_number, :street_name, :suburb, :postcode, :state, :rego, :make, :model)
    end


end
