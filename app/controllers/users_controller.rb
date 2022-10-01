class UsersController < ApplicationController
  set :default_content_type, 'application/json'



  
    get '/users' do
        #READ; THIS WILL GET ALL THE USERS
        users= User.all
        users.to_json
    end

  

end

