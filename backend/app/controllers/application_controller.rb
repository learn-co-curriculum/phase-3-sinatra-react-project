class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "whats up" }.to_json
  end
  get '/pieces' do 
    Piece.all.to_json
  end
end
