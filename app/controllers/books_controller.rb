class BooksController < ApplicationController
    get '/books' do
        Book.all.to_json
    end

    get '/books/:id' do
        book = Book.find(params[:id])
        book.to_json
    end
end

