class CommentsController < ApplicationController

#GET
get '/comments' do
    { message: "Hello World" }.to_json
 end
end
     # comments = Comment.all
     # comments.to_json(
     #     include: { user: { only: [:username] }, 
     #     post: { only: [:content] }
     # })
 

#{ only: [:username, :photo_src] }