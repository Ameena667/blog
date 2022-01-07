class UsersController < ApplicationController
    def new
        # render "users/new"
    end
    def create
        user = User.create!(
            name:params[:name],
            email:params[:email]
        )
        # session[:current_user_id] = user.id
        redirect_to root_path
    end
end