class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/movies" do
    movie = Movie.all
    movie.to_json
  end

  get "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.to_json
  end

  get "/movies/search/:word" do
    movie = Movie.where('main LIKE ?', "%#{params[:word]}%").or(Movie.where('title LIKE ?', "%#{params[:word]}%")).or(Movie.where('phase LIKE ?', "%#{params[:word]}%")).or(Movie.where('descriptions LIKE ?', "%#{params[:word]}%"))
    movie.to_json
  end

  # not sure if we need get for comments
  get "/comments" do
    comment = Comment.all
    comment.to_json
  end

  post "/comments" do
    comment = Comment.create(
      score: params[:score],
      review: params[:review],
      user_id: params[:user_id],
      movie_id: params[:movie_id]
    )
    comment.to_json
  end

  patch "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.update(
      body: params[:body]
    )
    comment.to_json
  end

  delete "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end

  get "/user/:username" do
    user = User.find_by(name:params[:username])
    user.to_json
  end

  post "/user" do
    user = User.create(name:params[:username], password:params[:password])
    user.to_json
  end
end
# testing adding commments for branch merging delete if you see