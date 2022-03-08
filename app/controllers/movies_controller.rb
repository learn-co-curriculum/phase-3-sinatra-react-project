class MoviesController < Sinatra::Base
   
    get '/movies' do
        movies = Movie.all
        movies.to_json
    end 
end