class SessionsController < ApplicationController
    def new
    end
    def create
        user = User.find_by(email: params[:email])
        if user 
            redirect_to "/"
        else 
            redirect_to "/signin"
        end
    end
end