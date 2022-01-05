class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/posts" do
    #This should return all posts
    posts = Post.all 
    posts.to_json(include: :author)
  end

  get "/posts/:id" do 
    #This should acquire a single specific post via id
    post = Post.find(params[:id])
    post.to_json(include: :author)
  end

  delete "/posts/:id" do 
    #Acquire the specific post by id and then delete it.
    post = Post.find(params[:id])
    post.destroy 
    post.to_json
  end
end
