class CommentsController < ApplicationController


get '/comments' do
     comments = Comment.all
     
     # patients.to_json(only: [:name, :age], include: :clinic)
     comments.to_json(
      include: { comment: { only: [:content] }, 
      user: { only: [:username] } 
  })
  
  end 
end




 

