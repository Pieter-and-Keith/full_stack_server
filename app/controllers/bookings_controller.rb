class BookingsController < ApplicationController
    before_action :authenticate_user, only: [:create, :update, :destroy]
    before_action :set_booking, only: [:show, :update, :destroy]

    def index
        @bookings = Booking.all
        render json: @bookings
    end

    def show
        render json: @booking
    end

    def create
        @booking = current_user.bookings.create(booking_params)
        if @booking.errors.any?
            reneder json: @booking.errors, status: 422
        else
            render json: @booking, status: 201
        end
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


end
