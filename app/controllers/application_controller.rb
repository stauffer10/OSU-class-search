class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    before_action :set_copyright

    def current_user
        # return this user if session user_id is stored backed by browser
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        # If have current_user, return true, otherwise, return false
        !!current_user
    end

    def require_user
        # if logged_in? returns false
        if !logged_in?
            flash[:danger] = "You must be logged in to do this"
            redirect_to root_path
        end 
    end

    def set_copyright
        @copyright = CopyrightViewTool::Renderer.copyright 'Pacific Software', 'All rights reserved'
    end

    # def login
    #     before_filter CASClient::Frameworks::Rails::Filter
    # end
    # def logout
    #     CASClient::Frameworks::Rails::Filter.logout(self)
    # end
end

module CopyrightViewTool
    class Renderer
        def self.copyright name, message
            "&copy#{Time.now.year} <b>#{name}</b> | #{message}.".html_safe
        end
    end
end

