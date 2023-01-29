class JokesController < ApplicationController

  get '/jokes' do 
    jokes = Joke.all 
    jokes.to_json(only: [:id, :joke], include: [
       comments: { only: [:comment, :rating]#, include: { 
        # user: { only: [:name] }
      }] )
    #jokes.to_json(include: [:comments])
  end


  # post '/jokes' do 
  #   comments = Comment.create(
  #     comment: params[:comment],
  #     rating: params[:rating],
  #     user_id: 'by' + params[:user_id],
  #   )
  # end

  post '/comments' do
    jokes = Joke.find_by_id(params[:id])
    comment = Comment.create(joke_id: jokes.id, comment:params[:comment],
    rating:params[:rating])
    comment.save
    comment.to_json
    end

    # patch '/jokes/:joke_id/comment' do 
    #   joke = Joke.find_by_id(params[:id]) 
    #   comment = Comment.update(joke_id:jokes.id, 
    #   comment:params[:comment])
    #   comment.to_json
    # end

    patch '/jokes/:id' do
      joke = Joke.find(params[:id])
      joke.update(joke: params[:joke])
      joke.to_json
    end

  post '/jokes/new' do 
    joke = Joke.create(joke:params[:joke]) 
    joke.to_json
    end

  patch '/jokes' do 
    # comment: params[:comment], 
    # rating: params[:rating], 
    # user_id: 'by' +params[:user_id]
  end

  delete '/jokes/:id' do 
    jokes = Joke.find(params[:id])
    jokes.destroy
    jokes.to_json
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