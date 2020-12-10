class Api::SessionsController < ApplicationController

    before_action :require_logged_out, only: [:create]
    before_action :require_logged_in, only: [:destroy]

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            login!(@user)
            render "api/users/show"
        else
            render json: ['Incorrect username or password'], status: 401
        end
    end

    def destroy
        @user = current_user
        logout!
        render json: []
        #! don't let people logout if not logged in
    end

end
