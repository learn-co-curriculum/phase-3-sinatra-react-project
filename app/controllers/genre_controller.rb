class GenreController < ApplicationController
    set :default_content_type, 'application/json'
    
    # # Add your routes here
    
  
    get "/genres/:genre" do
        movies_in_genres = Movie.all.filter(genre: params[:genre])
        movies_in_genres.to_json
    end 
  
  end
  