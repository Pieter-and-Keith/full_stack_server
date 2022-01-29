class DetailsController < ApplicationController

    def index
        @details = Detail.all
        render json: @details
    end


end
