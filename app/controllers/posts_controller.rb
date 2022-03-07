class PostsController < ApplicationController

    #GET
    get "/posts" do
        posts = Post.all
        posts.to_json(include: { comments: { include: :user} })

    end

end