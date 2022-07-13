class UsersController < ApplicationController
    get "/users" do
        User.all.to_json
    end
    get "/users/:id" do
        find_user
        if params.include?("friends")
            @user.to_json({include: :followers})
        else
            @user.to_json
        end
    end
    private 
    def find_user
        @user = User.find([params[:id]])
    end
end