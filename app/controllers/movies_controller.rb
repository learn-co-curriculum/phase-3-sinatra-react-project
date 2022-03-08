class MoviesController < ApplicationController
   
    get '/movies' do
        movies = Movie.all
        movies.to_json
    end 

    get '/movies/:id' do
        movie = Movie.find(params[:id])
        movie.to_json(
            include: { actors: { only: [:name] } }
        )
    end
end