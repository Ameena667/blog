class UsersController < ApplicationController
    def new
        # render "users/new"
    end
    def create
        User.create!(
            name:params[:name],
            email:params[:email]
        )
        redirect_to root_path
    end
end