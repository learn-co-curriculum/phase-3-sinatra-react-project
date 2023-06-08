class UserController < Sinatra::Base
  
    set :default_content_type, 'application/json'
    # @api: Enable CORS Headers
    configure do
      enable :cross_origin
    end
  
    before do
      response.headers['Access-Control-Allow-Origin'] = '*'
    end
  
    options "*" do
      response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
      response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
      response.headers["Access-Control-Allow-Origin"] = "*"
      200
    end
  
    get '/credentials/:id' do
       user = User.find(params[:id]).credentials.to_json
    end
  
    # retrieve the current user from the database
    get '/user/:id' do
      userArray = []
      user = User.find(params[:id])
      user.to_json
    end
  
    patch '/user-update/:id' do
      data = JSON.parse(request.body.read)
      user = User.find(params[:id])
      user.update(data)
  
      credential = user.credentials
      credential.update(email: user.email).to_json
    end
  
  # User registration - create new user credential
    # during registration, the user email data is stored automatically in both the users and credentials table.
    post '/register' do
      user = User.create(
        email: params[:email],
        name: params[:name]
      )
      user.to_json
  
      userCredential = Credential.create(
        username: params[:username],
        email: user.email,
        password: params[:password],
        user_id: user.id
      )
      userCredential.to_json
    end
  
  #   log in the user using email/username and password
    post '/login' do
        user_data = JSON.parse(request.body.read)
        if  user = Credential.find_by(email: user_data['email']) && user = Credential.find_by(password: user_data['password'])
          # user.to_json
          {email: user.email, user_id: user.user_id}.to_json
        elsif user = Credential.find_by(username: user_data['username']) && user = Credential.find_by(password: user_data['password'])
          {email: user.email, user_id: user.user_id}.to_json
        else
          {message: "Invalid email, username or password."}.to_json
        end    
    end
  end