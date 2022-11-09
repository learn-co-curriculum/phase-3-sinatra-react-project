require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

    #creates all the users
    post "/user" do
      user= User.create(name:params[:name])
      user.to_json
    end

    #gets all the users
    get "/user" do
      user = User.all
      user.to_json
    end

     #comment section
     post "/comments" do
      comment = Comment.create(comment:params[:comment])
      comment.to_json
    end

    #Gets all the comments
    get "/comments" do
      comment = Comment.all
      comment.to_json
    end

     #posting a new Article
     post "/posts" do 
      user= User.create(name:params[:name])
      comment = Comment.create(comment:params[:comment])
      post = Post.create(user_id: user.id, comment_id:comment.id, title:params[:title], content:params[:content],category:params[:category])
      post.to_json
    end

    #Display all the Post and user
    get "/" do
      post = Post.all
      post.to_json(include: :user)
    end

    #find post by id
    get "/post/:id" do
      post = Post.find(params[:id])
      post.to_json
    end
    
    #deleting a post
    delete "/posts/:id" do
      post = Post.find_by(params[:id])
      post.destroy
      post.to_json
    end

    # error 404 do
    #   "404: We couldnt find that page!!"
    # end

end