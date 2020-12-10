class Api::UsersController < ApplicationController

    before_action :require_logged_out, only: [:create]

    def new
        @user = User.new();
        render :new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            login!(@user)
            render "api/users/show"
        else
            render json: @user.errors.full_messages, status: 422
        end
    end

    def show
        @user = User.find_by(params[:id])
        if @user
            render :show
        else
            render json: @users.errors.full_messages, status: 404
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
