class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get '/' do
    post = Post.all.order(:created_at)
    post.to_json
  end

  get '/categories' do
    category = Category.all
    category.to_json
  end

  get '/category/id=:id' do
    category = Category.find(params[:id])
    category.to_json
  end

  get '/category/name=:name' do
    category = Category.find_by(name: params[:name])
    category.to_json
  end

  get '/category_posts/name=:name' do
    category = Category.find_by(name: params[:name]).posts
    category.to_json
  end
end
