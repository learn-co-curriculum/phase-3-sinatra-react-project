class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    { message: "This is giving me a headache" }.to_json
  end

  get '/cheeses' do
    Cheese.all.order(:age, :desc).to_json(include: [:comments, :ratings])
  end

  get '/cheese/:id' do
    Cheese.find(params[:id]).to_json(include: [:comments, :ratings])
  end

  get '/comment/:id' do
    Comment.find(params[:id]).to_json(include: params[:comment_text])
  end

  post '/cheese' do
    Cheese.create(name: params[:name], category: params[:category], age: params[:age], location: params[:location], image_url: params[:image_url], bio: params[:bio]).to_json
  end
  
  post '/cheese/:cheese_id/comment' do
    cheese = Cheese.find(params[:cheese_id])
    cheese.comments.create(comment_text: params[:comment_text]).to_json
  end

  post '/cheese/:cheese_id/rating' do
    cheese = Cheese.find(params[:cheese_id])
    cheese.ratings.create(rating: params[:rating]).to_json
  end

  patch '/comment/:id' do
    comment = Comment.find(params[:id])
    comment.update(comment_text: params[:comment_text])
    comment.to_json
  end

  delete '/comment/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    status 204
  end

end
