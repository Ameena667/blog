class HomeController < ApplicationController
    skip_before_action :ensure_user_logged_in
    def index
        @current_user = current_user
        # locals: {user_name : current_user.name}
        if current_user
            render "index"
            # redirect_to articles_path
        else
            render "index"
        end
    end
end