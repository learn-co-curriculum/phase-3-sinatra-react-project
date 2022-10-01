class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/books" do
    books = Book.all
    books.to_json
  end

  get "/favorites" do
    favorites = Favorite.all
    favorites.to_json
  end

  get "/bookshelf" do
    books = Stat.all.where("currently_reading = ?", true)
    books.first.to_json
  end

end
