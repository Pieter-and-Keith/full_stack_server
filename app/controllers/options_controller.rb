class OptionsController < ApplicationController
    before_action :authenticate_user, only:[:create, :update, :destroy]
    before_action :set_option, only: [:show, :update, :destroy]
    before_action :check_admin, only: [:create, :update, :destroy]

    def index
        @options = Option.all
        render json: @options
    end

    def show
        render json: @option
    end

    def create
        @option = Option.create(option_params)
        if @option.errors.any?
            render json: @option.errors, status: 422
        else 
            render json: @option, status: 201
        end
    end



    private

    def option_params
        params.require(:option).permit(:service_type, :description, :price)
    end

    def set_option
        begin
            @option = Option.find(params[:id])
        rescue
            render json: {error: "Option not found"}, status: 404
        end
    end

    def check_admin
        if current_user.username != "admin"
            render json: {error: "You don't have premission to do that"}, status: 401
        end
    end
end
