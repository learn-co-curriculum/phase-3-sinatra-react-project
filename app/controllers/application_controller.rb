class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # At a minimum, set up the following API routes in Sinatra:
  # create and read actions for both models
  # full CRUD capability for one of the models


  #Full CRUD Post Model 
  get "/posts" do
    posts = Post.all.order(:created_at, :ASC)
    posts.to_json
  end

  post './posts' do
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

  #CRUD for comments 


  #Create and read for users 


end
