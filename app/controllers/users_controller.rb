class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]
    before_action :require_admin, only: [:destroy]

    # display 5 users per page
    def index
        @users = User.paginate(page: params[:page], per_page: 5)
    end
    
    def new
        # new instance @user 
        @user = User.new
    end

    def create
        # user_params are user info entered in a form
        @user = User.new(user_params)
        
        if @user.save
            session[:user_id] = @user.id
            flash[:success] = "Welcome to the OSU Course Search #{@user.username}"
            redirect_to user_path(@user) # send to user#show page

        # If invalid user
        else
            render 'new'
        end
    end

    def edit
    
    end

    def update
        if @user.update(user_params)
            flash[:success] = "Your account was updated"
            redirect_to courses_path
        else 
            render 'edit'
        end
    end

    # also display only 5 articles 
    def show
        #@user_courses = @user.courses.paginate(page: params[:page], per_page: 3)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:danger] = "User and all articles created by users have been deleted"
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

    def require_admin
        if logged_in? and !current_user.admin?
            flash[:danger] = "Only admin user is allowed to perform this action"
            redirect_to root_path
        end
    end
end