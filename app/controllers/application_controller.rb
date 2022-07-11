class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require 'json'
  
  # Add your routes here
  get "/posts" do
    Post.all.to_json
  end
  get "/posts/:id" do
     post = Post.find_by_id(params['id'])
     
 end
 post "/posts" do
    post = Post.create(title:params[:title],user_id:params[:user_id], genre:params[:genre],body:params[:body])
    post.to_json
 end



 delete '/posts/:id' do
    Post.find(params[:id]).destroy
end

  patch '/posts/:id' do
  post = Post.find(params[:id])
  post.update(params)
  post.to_json

end

  # get "/users/:user_id/posts" do
    
  #   user = User.find_by_id(params["id"])
  #   user.posts.to_json(include: [:user])
  # end

  # get "/users" do
  #   User.all.to_json()
  # end


 

 

end


 

