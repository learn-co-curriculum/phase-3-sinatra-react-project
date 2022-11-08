class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
 
#   get '/books' do
#     books = Author.all
#     books.to_json(include: :books)
# end

# get '/books/only' do
#     books = Book.all
#     books.to_json
# end

# post '/books/only' do
#     book1 = Book.create(
#         title: params[:title],
#         thumbnail: params[:thumbnail],
#         pagecount: params[:pagecount],
#         author_id: params[:author_id], 
#     )
#     book1.to_json
# end

# delete '/books/only/:id' do
#     deleted = Book.find(params[:id])
#     deleted.destroy
#     deleted.to_json
# end

# delete '/books/:id' do
#     deleted = Book.find(params[:id])
#     deleted.destroy
#     deleted.to_json
# end

end
