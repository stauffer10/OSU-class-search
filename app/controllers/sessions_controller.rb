class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(email: params[:session][:email].to_s.downcase)

        # if email and password is valid
        if user && user.authenticate(params[:session][:password])
            # save user_id into the session, saved by browser
            session[:user_id] = user.id # setting to this users id
            flash[:success] = "You have logged in"
            redirect_to user_path(user)
        else
            # flash assist for 1 HTTP request
            flash.now[:danger] = "Email or passrod is wrong"
            render 'new'
        end
    end

    # logout
    def destroy
        # set session user_id to nil
        session[:user_id] = nil
        flash[:success] = "You have logged out"
        redirect_to root_path
    end
end