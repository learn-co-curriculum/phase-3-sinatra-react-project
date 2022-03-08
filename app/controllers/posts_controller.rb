class PostsController < ApplicationController

    get '/posts' do
        posts = Post.all
        posts.to_json(include: { comments: { include: :users} })

    end
end



