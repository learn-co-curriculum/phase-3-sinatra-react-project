class PostsController < ApplicationController

    get "/posts" do
        Post.all.to_json(include: :user)
    end

    get "/posts/:id" do
        Post.find([params[:id]]).to_json(include: :user)
    end

    post "/posts" do
        post = Post.create({
            header: params[:header],
            description: params[:description],
            image_url: params[:image_url],
            content_link: params[:content_link],
            like_count: params[:like_count],
            user_id: params[:user_id]
        })
        post.to_json(include: :user)
    end

    delete "/posts/:id" do
        post = Post.find(params[:id])
        post.destroy
        {message: "Post Deleted"}.to_json
    end


end

