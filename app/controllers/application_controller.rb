class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
    Movie.all.to_json
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json
  end

  post "/movies" do
    binding.pry
    genre = Genre.find_by name: params["genre"]
    movie = Movie.create(
      title: params["title"],
      release_date: params["release_date"],
      watched: params["watched"],
      genre_id: genre.id
    )
    movie.to_json
  end

  patch "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    movie.to_json
  end

  delete "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.destroy
  end

end
