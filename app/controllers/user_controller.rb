class UserController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here

    #get one user
    get "/users/:id" do
      user = User.find(params[:id])
      user.to_json
    end
    
    #create new playlist song
    post "" do
      PlaylistSong.create()
    end
  end