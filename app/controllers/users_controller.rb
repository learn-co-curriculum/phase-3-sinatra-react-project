class UsersController < ApplicationController

    get "/users" do
        users = User.all.to_json
      end

      get "/users/:id" do
        user = User.find(params[:id]).to_json
      end

      post "/users" do
        user = User.create(params).to_json
      end

      patch "/users/:id" do
        user = User.find(params[:id])
        user.update(params )
        user.to_json
      end

      delete "/users/:id" do
        user = User.find(params[:id])
        user.destroy
      end
end