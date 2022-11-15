class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "secret"
    register Sinatra::Flash
  end

  get "/data" do
    User.all.to_json(
      include: {
        posts: {
          include: [comments: {include: :commented_user}]
          }}
        

    )
    
  end

end
