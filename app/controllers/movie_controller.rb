class MovieController < ApplicationController
  set :default_content_type, 'application/json'
  
  # # Add your routes here
  # get "/movies" do
  #   "Hello"
  #   # Movie.all.to_json
  # end

  get "/movies/suggested" do
    "hello world"
  end 

  # get "/movies/genres" do
  # end 

end
