class UsersController < ApplicationController
    get "/users" do
        Users.to_json
    end
    get "/users/:id" do
        find_user
        if params.include?("friends")
            @user.friends.to_json
        else
            @user.to_json
        end
    end
    private 
    def find_user
        @user = User.find([params[:id]])
    end
end