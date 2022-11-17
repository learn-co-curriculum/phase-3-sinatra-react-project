require "pry"


class UsersController < ApplicationController 

    post "/signup" do
      user = User.new(username: params[:username], password: params[:password], email: params[:email], name: params[:name])
      if user.username.blank? || user.email.blank? || user.name.blank? || user.password.blank? || User.find_by_email(params[:email]) || User.find_by_username(params[:username])
        return {error: "Failed to signup"}.to_json
      else
        user.save
        session[:user_id] = user.id
        return {user: user}.to_json
      end
    end

    post "/login" do 
      user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        return {user: user}.to_json(
          include: {
            posts: {
              include: [comments: {include: :commented_user}]
              }
          }
        )
      else
        return {error: "Invalid Login"}.to_json
      end
    end

    get "/logout" do 
      session.clear
      return ("Logged out successfully!").to_json
    end

      get "/users" do
        users = User.all.to_json
      end

      get "/users/:id" do
        user = User.find(params[:id]).to_json
      end

      get "/users/username/:username" do
        user = User.find_by(username: params[:username]).to_json
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