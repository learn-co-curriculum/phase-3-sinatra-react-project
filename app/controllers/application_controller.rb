class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "This is a test" }.to_json
  end

  get "/movies" do 
    movies = Movie.all
    movies.to_json
  end

  get "/shows" do 
    shows = Show.all
    shows.to_json
  end

end
