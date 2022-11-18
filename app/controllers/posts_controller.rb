class PostsController < ApplicationController

    get "/posts" do
        posts = Post.all.to_json
      end

      get "/posts/:id" do
        post = Post.find(params[:id]).to_json
      end

      post "/createpost" do
        post = Post.create(description: params[:description], image_url: params[:image_url])
        UsersPost.create(user_id: session[:user_id], post_id: post.id)
        post.to_json
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