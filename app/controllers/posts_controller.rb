class PostsController < ApplicationController

    get '/posts' do
        posts = Post.all
        posts.to_json( 
            include: :user,
            # only: [:username, :photo_src],
        )
    end

    get '/posts/:id' do
        post = Post.all.find(params[:id])
        post.to_json(include: :comments)
    end

    #CREATE
    post '/posts' do 
        post = Post.create(
            content: params[:content],
            user_id: params[:user_id]
        )
        post.to_json
    end

    #DELETE
    delete '/posts/:id' do
        post = Post.find(params[:id])
        post.destroy
        post.to_json
    end
    
    #UPDATE
    patch '/posts/:id' do
        post = Post.find(params[:id])
        post.update(
            content: params[:content]
        )
        post.to_json
    end

end