class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
    # returns all the users
  get "/" do 
    all_users = User.all
    all_users.to_json
  end
 

end
