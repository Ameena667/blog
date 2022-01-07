class SessionsController < ApplicationController
    skip_before_action :ensure_user_logged_in
    def new
    end
    def create
        user = User.find_by(email: params[:email])
        if user
            #render plain:"correct pswd"
            session[:current_user_id] = user.id 
            redirect_to articles_path
        else 
            render plain:"incorrect pwes"
            #redirect_to "/signin"
        end
    end
end