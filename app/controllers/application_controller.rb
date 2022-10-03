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

  get "/users" do
    stats = Stat.select('books.*, stats.*').joins(:book)
    stats.to_json
  end

  get "/bookshelf" do
    books = Stat.all.where("currently_reading = ?", true).select('books.*, stats.*').joins(:book)
    books.first.to_json
  end

  get "/articles" do
    articles = Article.all
    articles.to_json
  end

  delete "/favorites/:id" do
    favorite = Favorite.find(params[:id])
    favorite.destroy
    favorite.to_json
  end

  post "/favorites" do
    favorite = Favorite.create(
      star_rating: params[:star_rating],
      user_id: params[:user_id],
      book_id: params[:book_id]
    )
    favorite.to_json
  end

  post "/books" do
    book = Book.create(
      title: params[:title],
      author: params[:author],
      page_count: params[:page_count],
      publication_year: params[:publication_year],
      library_availability: params[:library_availability],
      image_url: params[:image_url]
    )
    book.to_json
  end

end

