class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/books" do
    books = Book.all.order(:id)
    books.to_json
  end

  get '/books/:id' do
    book = Book.find(params[:id])
    book.to_json
  end

  delete "/books/:id" do
    deleted = Book.find(params[:id])
    deleted.destroy
    deleted.to_json
  end 

  post "/books" do
    new_book = Book.create(
      title: params[:title],
      genre: params[:genre],
      price: params[:price],
      description: params[:description],
      year_published: params[:year_published],
      user_id: params[:user_id]
    )
    new_book.to_json
  end

    patch "/books/:id" do 
    updated = Book.find(params[:id])
    updated.update(
      title: params[:title],
      genre: params[:genre],
      price: params[:price],
      description: params[:description],
      year_published: params[:year_published],
      user_id: params[:user_id]
    )
    updated.to_json
  end

end