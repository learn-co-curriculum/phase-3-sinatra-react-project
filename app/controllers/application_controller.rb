class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get '/' do
    post = Post.all.order(:created_at).reverse
    post.to_json(include: :comments)
  end

  get '/categories' do
    category = Category.all
    category.to_json
  end

  # get '/category/id=:id' do
  #   category = Category.find(params[:id])
  #   category.to_json
  # end

  # get '/category/name=:name' do
  #   category = Category.find_by(name: params[:name])
  #   category.to_json
  # end

  get '/category_posts/name=:name' do
    category =
      Category.find_by(name: params[:name]).posts.order(:created_at).reverse
    category.to_json
  end

  delete '/post/:id' do
    post = Post.find(params[:id])
    post.destroy
    post.to_json
  end
  
  post '/new_comment' do
    comment = Comment.create(
      name: params[:name],
      message: params[:message],
      avatar_url: "https://i.pravatar.cc/50",
      post_id: params[:post_id],
    )
    comment.to_json
  end
  
  post '/new_post' do
    post =
    Post.create(
      content: params[:content],
      image_url: params[:image_url],
      category_id: params[:category_id],
      contributor_name: params[:contributor_name],
      subject: params[:subject],
      )
      post.to_json
    end

    get '/comments' do
      comments = Comment.all.order(:created_at).reverse
      comments.to_json
    end

  end
