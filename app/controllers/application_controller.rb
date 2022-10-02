class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/books" do
    books = Book.all
    books.to_json
  end

  get "/favorites" do
    favorites = Favorite.select('books.*, favorites.*').joins(:book)
    favorites.to_json
  end

  get "/bookshelf" do
    books = Stat.all.where("currently_reading = ?", true).select('books.*, stats.*').joins(:book)
    books.first.to_json
  end

  delete "/favorites/:id" do
    favorite = Favorite.find(params[:id])
    favorite.destroy
    favorite.to_json
  end

  # post "/favorites" do
  #   favorite = Favorite.create(
  #     star_rating: params[:star_rating]

  #   )
  # end

end

