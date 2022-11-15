class UsersPostsController < ApplicationController

    get "/usersposts" do
        usersposts = UsersPost.all.to_json
      end

      get "/usersposts/:id" do
        userspost = UsersPost.find(params[:id]).to_json
      end

      post "/usersposts" do
        usersposts = UsersPost.create(params).to_json
      end

      patch "/usersposts/:id" do
        puserspost = UsersPost.find(params[:id])
        userspost.update(params)
        userspost.to_json
      end

      delete "/usersposts/:id" do
        userspost = UsersPost.find(params[:id])
        userspost.destroy
      end
end