class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/posts" do
    Post.all.to_json
  end
  get "/posts/:id" do
    Post.find(params[:id]).to_json
 end
 post "/posts" do
    post = Post.create(title:params[:title],name:params[:name],user_id:params[:user_id], genre:params[:genre],body:params[:body])
    post.to_json
 end

 delete '/posts/:id' do
    Post.find(params[:id]).destroy
    
end
  get "/users" do
    User.all.to_json
  end
  post "/users" do
    user = User.create(name:params[:name], age:params[:age])
    user.to_json
  end

  get "/products" do
    Product.all.to_json
  end

end
