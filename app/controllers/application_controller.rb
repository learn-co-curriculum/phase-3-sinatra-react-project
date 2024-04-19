class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  require 'pry'

  enable :sessions
  set :session_secret, 'production_secret'
  
  # Add your routes here
  post '/signup' do
    if session[:user_id]
      status 403
      return { success: false, message: "You already have an account." }.to_json
    end

    user = User.new(username: params[:username].downcase, password: params[:password])
  
    if user.save
      session[:user_id] = user.id \
      user = User.find_by(id: session[:user_id])
      user.to_json except: :password_digest, include: :characters
    else
      status 422
      { success: false, message: "Unable to create user." }.to_json
    end
  end

  post '/login' do
    if session[:user_id]
      status 403
      { success: false, message: "A user is already logged in." }.to_json
    elsif (user = User.find_by(username: params[:username])) && user.authenticate(params[:password])
      session[:user_id] = user.id
      user = User.find_by(id: session[:user_id])
      user.to_json except: :password_digest, include: :characters
    else
      status 401
      { success: false, message: "Invalid username or password." }.to_json
    end
  end

  delete '/logout' do
    session.clear

    { success: true, message: "Logged out successfully." }.to_json
  end

  get '/characters' do
    # Check if a user is logged in by checking if session[:user_id] exists
    if session[:user_id]
      # Find the user in the database
      user = User.find(session[:user_id])
  
      # Access the characters associated with the user
      characters = user.characters
  
      # Convert the characters to JSON and return
      characters.to_json
    else
      # If no user is logged in, return an error message
      status 403
      { error: "User not logged in" }.to_json
    end
  end

  get "/characters" do
    character = Character.all
    character.to_json
  end

  post "/characters" do 
    temp_id = Template.all.where(class_name: params[:class_name]).pluck(:id).sample
    new_character = Character.create(name: params[:name], history: params[:history], user_id: params[:user_id], template_id: temp_id)
    new_character.to_json
  end

  delete "/characters/:id" do
    delete_character = Character.find_by(id: params[:id])
    delete_character.destroy
    delete_character.to_json
  end 

  patch "/characters/:id" do
    update_character = Character.find_by(id: params[:id])
    update_character.update(name: params[:name], history: params[:history])
    update_character.to_json
  end

  get "/templates" do
    template = Template.all
    template.to_json
  end

  get "/templates/class_name" do
    class_name = Template.all.pluck(:class_name).uniq
    class_name.to_json
  end

  get "/templates/:id" do
    template_id = Template.find_by(id: params[:id])
    template_id.to_json
  end

  get '/me' do
    user = User.find_by(id: session[:user_id])

    if user
      user.to_json except: :password_digest, include: :characters
    else
      status 401
      { error: "Please login." }.to_json
    end
  end
end

 

# PRIVATE

#   def character_params
#     {name: params[:name], history: params[:history], user_id: params[:user_id], template_id: params[:template_id]}
#   end