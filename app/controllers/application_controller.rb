class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # At a minimum, set up the following API routes in Sinatra:
  # create and read actions for both models
  # full CRUD capability for one of the models


  #Full CRUD Post Model 

  get "/posts/:id" do
    post = Post.find(params[:id])
    post.to_json(include: :comments)
  end


  get "/posts" do
    posts = Post.all.order(:created_at, :ASC)
    posts.to_json(include: :comments)
  end

  post '/posts' do
    post = Post.create(
      title: params[:title],
      body: params[:body],
      user_id: params[:user_id],
    )
    post.to_json
  end

  patch '/posts/:id' do
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      body: params[:body],
    )
    post.to_json
  end

  delete '/posts/:id' do
    post = Post.find(params[:id])
    post.destroy
    post.to_json
  end

  # once user has 10 posts patch to bold their name and give a star for being "verified"

  #CRUD for comments 
  get "/comments" do
    comments = Comment.all.order(:created_at, :ASC)
    comments.to_json
  end

  # patch '/posts/:id/comments/:id' do
  #   comment = Comment.find(params[:id])
  #   comment.update(body: params[:body])
  #   comment.to_json
  # end


  #Create and read for users 

  get "/users" do
    users = User.all.order(:created_at, :ASC)
    users.to_json
  end




end
