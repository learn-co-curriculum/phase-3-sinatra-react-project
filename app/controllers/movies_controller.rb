class MoviesController < ApplicationController
   
    get '/movies' do
        movies = Movie.all
        movies.to_json
    end 

    get '/movies/:id' do
        movie = Movie.find(params[:id])
        movie.to_json(
            include: {  actors: { only: [:name, :profile_image_url, :filmography_count] }, reviews: { only: [:content], include: { critic: { only: [:name, :image] } } } }
        )
    end

    get '/top_movies' do
        top_movies = Movie.top_movies
        top_movies.to_json
    end
end