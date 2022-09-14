class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/posts" do
    #{ message: "Good luck with your project!" }.to_json
    posts = Post.all
    posts.to_json
  end

end
