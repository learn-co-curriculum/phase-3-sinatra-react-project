class CommentsController < ApplicationController


get '/comments' do

  comments = Comment.all

  comments.to_json(
      include: { user: { only: [:username] }, 
      post: { only: [:content] } 
  })
  
  end 
end




 

