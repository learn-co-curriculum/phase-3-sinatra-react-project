class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # At a minimum, set up the following API routes in Sinatra:
  # create and read actions for both models
  # full CRUD capability for one of the models


  #Full CRUD Post Model 

  get "/posts/:id" do
    post = Post.find(params[:id])
    post.to_json(include: {
      comments: { only: [:body, :id], include: {
        user: { only: [:username] }
      } }
    })
  end


  get "/posts" do
    posts = Post.all.order(:created_at, :ASC)
    # binding.pry
    posts.to_json(include: :user)
  end

  post '/posts' do
    post = Post.create(
      title: params[:title],
      body: params[:body],
      user_id: params[:user_id]
    )
    post.to_json(include: :user)
  end

  patch '/posts/:id' do
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      body: params[:body],
    )
    post.to_json(include: :user)
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
    comments.to_json(include: :user)
  end


  post '/comments' do
    commnet = Comment.create(
      body: params[:body],
      user_id: params[:user_id],
      post_id: params[:post_id],
    )
    commnet.to_json(include: :user)
  end

  delete '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json

  end




  # once user has 10 comments add emoji next to name to show theyre active 


  get "/users" do
    users = User.all.order(:created_at, :ASC)
    users.to_json
  end

  post '/users' do
    user = User.create(
     first_name: params[:first_name],
     last_name: params[:last_name],
     username: params[:username],
     email: params[:email],
    )
    user.to_json

  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json

  end

end
