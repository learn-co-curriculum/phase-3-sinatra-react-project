class UsersController < ApplicationController 
    get "/signup" do 
      erb :"users/signup"
    end

    post "/signup" do
      user = User.new(params)
      if user.username.blank? || user.email.blank? || user.name.blank? || user.password.blank? || User.find_by_email(params[:email]) || User.find_by_username(params[:username])
        redirect "/signup"
      else
        user.save
        session[:user_id] = user.id
        redirect "/posts"
      end
    end

    get "/login" do 
      erb :"users/login"
    end

    post "/login" do 
      author = Author.find_by_username(params [:username])
      if author && author.authenticate(params[:password])
        session[:user_id] = user.id
        redirect "/posts"
      else
        flash[:error] = "Invalid Login"
      end
    end

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