class PostsController < ApplicationController

    get "/posts" do
        posts = Post.all.to_json
      end

      get "/posts/:id" do
        post = Post.find(params[:id]).to_json
      end

      post "/posts" do
        post = Post.create(params).to_json
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