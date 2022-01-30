class OptionsController < ApplicationController
    before_action :set_option, only: [:show, :update, :destroy]

    def index
        @options = Option.all
        render json: @options
    end

    def show
        render json: @option
    end


    private

    # def get_options
    #     params.require(:option).permit(:options_id,:date, :comment, :finished, :paid)
    # end

    def set_option
        begin
            @option = Option.find(params[:id])
        rescue
            render json: {error: "Option not found"}, status: 404
        end
    end

end
