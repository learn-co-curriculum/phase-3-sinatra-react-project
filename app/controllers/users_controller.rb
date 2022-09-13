class UsersController < ApplicationController

    get "/users" do 
        users = User.all
        users.to_json
    end
    
    get "/users/:id" do
        user = User.find(params[:id])
        user.to_json
    end
    
    post "/users" do
        new_User = User.create(name:params[:name])
        status 201
        new_User.to_json
    end

    patch "/users/:id" do
        user = User.find(params[:id])
        user.update(name:params[:name])
        user.to_json
    end

    delete "/users/:id" do
        old_User = User.find(params[:id])
        old_User.destroy
        status 204
    end

end