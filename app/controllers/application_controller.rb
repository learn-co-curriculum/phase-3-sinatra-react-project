class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    users = User.all
    #  INCLUDE A METHOD OF AGE
    users.to_json
  end

  # patch "/users/:id/likes" do
  #   user = User.find(params[:id])
  #   user.create_like
  # end


  get "/lovers" do
    lovers = Lover.all
    lovers.to_json
  end

  get "/matches" do
    matches = Match.all
    matches.to_json
  end

end
