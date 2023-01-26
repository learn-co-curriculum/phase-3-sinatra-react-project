class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/login' do 

  end

  get '/jokes' do 
    jokes = Joke.all
    jokes.to_json
  end


  post '/jokes' do 
    comments = Comment.create(
      comment: params[:comment],
      rating: params[:rating],
      user_id: 'by' + params[:user_id],
    )
  end

  get '/j/:joke_id' do 
    one_joke = Joke.find_by(params[:joke_id])
    one_joke.to_json
  end

  get '/j/search' do 

  end
end
