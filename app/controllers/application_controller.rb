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
  end

  get '/j/:joke_id' do 

  end

  get '/j/search' do 

  end
end
