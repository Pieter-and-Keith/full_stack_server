class UsersController < ApplicationController

    def create
        @user = User.create(user_params)
        if @user.save 
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token}, status: 201
        else
            render json: @user.errors , status: 422
        end
    end

    def sign_in
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
            auth_token = Knock::AuthToken.new payload: {sub:@user.id}
            render json: {username:@user.username, jwt: auth_token.token}, status: 200
        else
            render json: {error: "Incorrect Email or Password"}, status: 404
        end
    end


    private

    def user_params
        params.permit(:user, :username, :email, :password, :password_confirmation)
    end

end
