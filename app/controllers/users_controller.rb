class UsersController < ApplicationController

    get "/users" do
        User.all.to_json(include: [:posts, :favorites])
    end

    get "/users/:id" do
        User.find([params[:id]]).to_json(include: [:posts, :favorites])
    end

    post "/users" do
        user = User.create({
            name: params[:name],
            username: params[:username],
            email: params[:email],
            password: params[:password],
            github: params[:github],
            linkedin: params[:linkedin],
            image_url: params[:image_url],
            bio: params[:bio]
        })
        user.to_json(include: [:posts, :favorites])
    end

    patch "/users/:id" do
        user = User.find(params[:id])
        user.update({
            name: params[:name],
            username: params[:username],
            email: params[:email],
            password: params[:password],
            github: params[:github],
            linkedin: params[:linkedin],
            image_url: params[:image_url],
            bio: params[:bio]
        })
        user.to_json(include: [:posts, :favorites])
    end


end