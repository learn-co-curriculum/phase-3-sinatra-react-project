class BooksController < ApplicationController
    get '/books' do
        Book.all.to_json
    end

    get '/books/:id' do
        book = Book.find(params[:id])
        bookDTO = BookDTO.new
        bookDTO.title = book.title
        bookDTO.author = book.author 
        bookDTO.year = book.year
        bookDTO.pages = book.pages
        reviews = Review.where(book_id: params[:id])
        bookDTO.reviews = reviews
        bookDTO.to_json
    end

    post '/books' do
        #binding.pry
        book = Book.create(
        title: params[:title],
        author: params[:author],
        year: params[:year],
        pages: params[:pages]
        )
        book.to_json
    end
end

