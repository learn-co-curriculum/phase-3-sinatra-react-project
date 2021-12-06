class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get '/' do
    post = Post.all.order(:created_at)
    post.to_json
  end
end
