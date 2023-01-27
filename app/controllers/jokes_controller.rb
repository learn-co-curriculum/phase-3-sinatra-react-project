class JokesController < ApplicationController

  get '/jokes' do 
    jokes = Joke.all 
    jokes.to_json(only: [:id, :joke], include: [
       comments: { only: [:comment, :rating]#, include: { 
        # user: { only: [:name] }
      }] )
    #jokes.to_json(include: [:comments])
  end


  post '/jokes' do 
    comments = Comment.create(
      comment: params[:comment],
      rating: params[:rating],
      user_id: 'by' + params[:user_id],
    )
  end

  patch '/jokes' do 
    # comment: params[:comment], 
    # rating: params[:rating], 
    # user_id: 'by' +params[:user_id]
  end

  delete '/jokes' do 

  end

  get '/jokes/:joke_id' do 
    joke = Joke.find_by_id(params[:joke_id])
    joke.to_json(only: [:id, :joke], include: [
      comments: { only: [:comment, :rating]#, include: { 
       # user: { only: [:name] }
     }] )
  end

  get '/jokes/search' do 
    

  end
end 