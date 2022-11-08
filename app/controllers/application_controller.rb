class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
  get '/books' do
    books = Author.all
    books.to_json(include: :books)
end

get '/books/only' do
    books = Book.all
    books.to_json
end

post '/books' do
    book1 = Book.create(
        title: params[:title],
        author_id: params[:author_id], 
        summary: params[:summary],
        category: params[:category],
        image: params[:image],
       
    )
    book1.to_json
end

patch '/books/only:id' do
    book = Book.find(params[:id])
    book.update(body: params[:body])
    book.to_json
  end
patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(body: params[:body])
    book.to_json
  end

delete '/books/only/:id' do
    deleted = Book.find(params[:id])
    deleted.destroy
    deleted.to_json
end

delete '/books/:id' do
    deleted = Book.find(params[:id])
    deleted.destroy
    deleted.to_json
end

end
