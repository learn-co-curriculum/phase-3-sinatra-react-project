class MovieController < ApplicationController
  set :default_content_type, 'application/json'
  
  # # Add your routes here
  get "/movies" do
    Movie.all.to_json
  end

  get "/movies/suggested" do
    Movie.suggested.to_json
  end 

  get "/movies/genres" do
    Movie.genres.to_json
  end 

end
