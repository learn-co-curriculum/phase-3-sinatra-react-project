class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "" do
    {message:"Welcome to our dad jokes page.\n I hate it here." }.to_json
  end

  get '/login' do 

  end

 
end
