class PostsController < ApplicationController

    get '/posts' do
        posts = Post.all
        posts.to_json( 
            # 
            include: :user,
            # only: [:username, :photo_src],
            # include: :comments
            )
    end
end



