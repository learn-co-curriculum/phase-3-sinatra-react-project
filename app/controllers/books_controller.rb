class BooksController < ApplicationController
    get '/books' do
        Book.all.to_json
    end
end
