class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    users = User.all 
    users.to_json
  end

  get "/lovers" do
    lovers = Lover.all
    lovers.to_json
  end

  get "/matches" do
    matches = Match.all
    matches.to_json
  end

end
