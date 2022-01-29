class DetailsController < ApplicationController
    before_action :set_detail, only:[:show]

    def index
        @details = Detail.all
        render json: @details
    end

    def show
        render json:@detail
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

    def set_detail
        begin
            @detail = Detail.find(params[:id])
        rescue
            render json:{error:"User detail not found"}, status: 404
        end
    end


end
