class PostsController < ApplicationController

    get "/posts" do
        posts = Post.all.to_json
      end

      get "/posts/:id" do
        post = Post.find(params[:id]).to_json
      end

      post "/posts" do
        post = Post.new(params).to_json
        post.user_id = session[:user_id]
        post.save
        redirect "/posts/#{post.id}"
      end

      patch "/posts/:id" do
        post = Post.find(params[:id])
        post.update(params)
        post.to_json
      end

      delete "/posts/:id" do
        post = Post.find(params[:id])
        post.destroy
      end
end