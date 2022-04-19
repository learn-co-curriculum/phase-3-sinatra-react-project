class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/books" do
    book_all = Book.all
    book_all.to_json
  end 

  get "/books/:title" do
    book_titles = Book.where(title: params[:title])
    book_titles.to_json
  end

   get "/ages" do
    age_all = Age.all
    age_all.to_json
  end 

  get "/bests" do
    best_all = Best.all
    best_all.to_json
  end 
get "/book/:title" do
    book = Book.where(("title LIKE ?", "%#{params[:title]}%")
    book.to_json
  end

end
