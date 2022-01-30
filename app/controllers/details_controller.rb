class DetailsController < ApplicationController
    before_action :authenticate_user, only:[:create, :update, :destroy]
    before_action :set_detail, only:[:show, :update, :destroy]
    before_action :check_ownership, only:[:update, :destroy]

    def index
        @details = Detail.all
        render json: @details
    end

    def show
        render json: @detail
    end

    def create
        @detail = current_user.details.create(detail_params)
        if @detail.errors.any?
            render json: @detail.errors, status: 422
        else 
            render json: @detail, status:201
        end

    end

    def update
        @detail.update(detail_params)

        if @detail.errors.any?
            render json: @detail.errors, status: 422
        else 
            render json: @detail, status: 201
        end
    end

    def destroy
        @detail.delete
        render json:204
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

    def check_ownership 
        if current_user.id != @detail.user.id
            render json: {error: "You don't have permission to do that"}, status: 401
        end
    end


end
