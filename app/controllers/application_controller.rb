class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #get all books
  get "/books" do
    @books = Book.all
    @books.to_json
  end
  #get a book by id
  get "/books/:id" do
    @book = Book.find(params[:id])
    @book.to_json
  end
  #create a book
  post "/books" do
    @book = Book.create(params)
    @book.to_json
  end
  #update a book
  patch "/books/:id" do
    @book = Book.find(params[:id])
    @book.update(params)
    @book.to_json
  end
  #delete a book
  delete "/books/:id" do
    @book = Book.find(params[:id])
    @book.destroy
    { message: "Book deleted" }.to_json
  end
  #get all books by a specific author
  get "/authors/:id/books" do
    @author = Author.find(params[:id])
    @books = @author.books
    @books.to_json
  end
  #get all authors
  get "/authors" do
    @authors = Author.all
    @authors.to_json
  end
  #get a specific author
  get "/authors/:id" do
    @author = Author.find(params[:id])
    @author.to_json
  end
  #create an author
  post "/authors" do
    @author = Author.create(params)
    @author.to_json
  end
  #update an author
  patch "/authors/:id" do
    @author = Author.find(params[:id])
    @author.update(params)
    @author.to_json
  end
  #delete an author
  delete "/authors/:id" do
    @author = Author.find(params[:id])
    @author.destroy
    { message: "Author deleted" }.to_json
  end
  #get all readers
  get "/readers" do
    @readers = Reader.all
    @readers.to_json
  end
  #get a specific reader
  get "/readers/:id" do
    @reader = Reader.find(params[:id])
    @reader.to_json
  end
  #create a reader
  post "/readers" do
    @reader = Reader.create(params)
    @reader.to_json
  end
  #update a reader
  patch "/readers/:id" do
    @reader = Reader.find(params[:id])
    @reader.update(params)
    @reader.to_json
  end
  #delete a reader
  delete "/readers/:id" do
    @reader = Reader.find(params[:id])
    @reader.destroy
    { message: "Reader deleted" }.to_json
  end
  #get all books read by a specific reader
  get "/readers/:id/books" do
    @reader = Reader.find(params[:id])
    @books = @reader.books
    @books.to_json
  end
  #get all readers who have read a specific book
  get "/books/:id/readers" do
    @book = Book.find(params[:id])
    @readers = @book.readers
    @readers.to_json
  end
  #create a readers_book
  post "/readers_books" do
    @readers_book = ReadersBook.create(params)
    @readers_book.to_json
  end
  #update a readers_book
  patch "/readers_books/:id" do
    @readers_book = ReadersBook.find(params[:id])
    @readers_book.update(params)
    @readers_book.to_json
  end
  #delete a readers_book
  delete "/readers_books/:id" do
    @readers_book = ReadersBook.find(params[:id])
    @readers_book.destroy
    { message: "ReadersBook deleted" }.to_json
  end
end
