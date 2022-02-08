class BookingsController < ApplicationController
    before_action :authenticate_user, only: [:create, :update, :destroy]
    before_action :set_booking, only: [:show, :update, :destroy]
    before_action :check_ownership, only: [:update,:destroy]

    def index
        @bookings = Booking.all
        render json: @bookings
    end

    def show
        render json: @booking.transform_booking
    end

    def create
        @booking = current_user.bookings.create(booking_params)
        if @booking.errors.any?
            render json: @booking.errors, status: 422
        else
            render json: @booking.transform_booking, status: 201
        end
    end

    def update
        @booking.update(booking_params)
        if @booking.errors.any?
            render json: @booking.errors, status: 422
        else
            render json: @booking.transform_booking, status: 201
        end
    end

    def destroy
        @booking.delete
        render json:204
    end


    private

    def booking_params
        params.require(:booking).permit(:option_id,:date,:comment, :finished, :paid)
    end

    def set_booking
        begin
            @booking = Booking.find(params[:id])
        rescue
            render json: {error: "Booking not found"}, status: 404
        end
    end

    def check_ownership
        if  (current_user.username != "admin")
            render json: {error: "you dont have permission to do that"}, status: 401
        end
    end

end
