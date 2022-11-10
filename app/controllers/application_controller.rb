class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
  get '/books' do
    books = Book.all
    books.to_json(include: :author)
end
  get '/authors' do
    books = Author.all
    books.to_json
end

get '/books/:id' do
    books = Book.find(params[:id])
    books.to_json(include: :author)
end

post '/books' do
    books = Book.create(
        title: params[:title],
        author_id: params[:author_id], 
        summary: params[:summary],
        category: params[:category],
        image: params[:image],
       
    )
    books.to_json
end

patch '/books/:id' do
    books = Book.find(params[:id])
    books.update(  
        title: params[:title],
        author_id: params[:author_id], 
        summary: params[:summary],
        category: params[:category],
        image: params[:image],
    )
    books.to_json
  end



delete '/books/:id' do
    deleted = Book.find(params[:id])
    deleted.destroy
    deleted.to_json
end

end
