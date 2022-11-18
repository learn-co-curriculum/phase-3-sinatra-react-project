class PostsController < ApplicationController

    get "/posts" do
        posts = Post.all.to_json
      end

      get "/posts/:id" do
        post = Post.find(params[:id]).to_json
      end

      post "users/:id/posts" do
        post = Post.new(params)
        post.users_posts.new(user_id: session[:user_id]).save
        post.save
        return {posts: {include: :users_posts}}.to_json
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