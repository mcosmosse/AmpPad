class SessionController < ApplicationController

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
        logout! if logged_in?
        redirect_to api_session_url #! render the home page after sign-out
    end

end
