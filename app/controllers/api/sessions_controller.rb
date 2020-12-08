class Api::SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            login!(@user)
            render "api/users/show"
        else
            flash.now[:errors] = ['Incorrect username or password']
            render :new
        end
    end

    def destroy
        @user = current_user
        logout! if logged_in?
        render "api/users/show"
        #! don't let people logout if not logged in
    end

end
