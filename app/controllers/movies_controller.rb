class MoviesController < Sinatra::Base
   
    get '/movies' do
        movies = Movie.all.order(:title)
        movies.to_json(
            only: [:title]
        )
    end 

    get 'movie/:id' do
        movie = Movie.find(params[:id])
        movie.to_json(
            include: { actors: { only: [:name] } }
        )
    end
end