require "bcrypt"
require 'securerandom'


VERY_UNSECRET_TOKEN = "some secret token"

class ApplicationController < Sinatra::Base
  include BCrypt

  set :default_content_type, 'application/json'
  
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  


  post "/create_user" do
    # params
    username = params[:username]
    password = params[:password]
    first_name = params[:first_name]
    last_name = params[:last_name]
    # end params

    api_token = BCrypt::Password.create(VERY_UNSECRET_TOKEN)
    user = User.create(username:username, password_hash:Password.create(password), api_token: api_token, first_name: first_name, last_name: last_name)
    {
      success: true,
      # data: user
    }.to_json
  end

  # session[:current_user_id] = user.id  

  post "/login" do
    # params
    username = params[:username]
    password = params[:password]
    # end params

    begin
      user = User.where(username:username).first
      if !user || user.password != password
        {
          success: false,
          errorMessage: "Invalid username/password"
        }.to_json
      else
        {
          success: true,
          data: user
        }.to_json
      end
    rescue
      {
        success: false,
        errorMessage: "Unknown error occurred"
      }.to_json
    end
  end

  post "/add_paths" do
    # params
    api_token = params[:api_token]
    canvasboard_identifier = params[:canvasboard_identifier]
    canvas_paths = params[:canvas_paths]
    # end params

    begin
      user = User.find_by(api_token:api_token)
      if !user
        return {
          success: false,
          errorMessage: "Invalid username/password"
        }.to_json
      end

      found_canvas = Canvasboard.find_by(identifier:canvasboard_identifier)
      if !found_canvas
        return {
          success: false,
          errorMessage: "Invalid canvas board"
        }.to_json
      end

      canvas_paths.each do |path|
        Canvaspath.create(canvasboard_id:found_canvas.id, user_id:user.id, data: path.to_json)
      end

      # creates the connection
      Collaboration.create(user: user, canvasboard: found_canvas)

      {
        success: true,
      }.to_json
    rescue
      {
        success: false,
        errorMessage: "Unknown error occurred"
      }.to_json
    end
  end


  post "/canvas_board" do
    # params
    # api_token = params[:api_token]
    canvasboard_identifier = params[:canvasboard_identifier]
    last_timestamp = params[:last_timestamp]
    # end params

    # user = User.find_by(api_token:api_token)
    # if !user
    #   return {
    #     success: false,
    #     errorMessage: "Invalid username/password"
    #   }.to_json
    # end

    found_canvas = Canvasboard.find_by(identifier:canvasboard_identifier)
    if !found_canvas
      return {
        success: false,
        errorMessage: "Invalid canvas board"
      }.to_json
    end

    {
      success: true,
      data: found_canvas.get_canvas_points_and_format(last_timestamp)
    }.to_json
  end

  post "/all_canvas_boards" do
    # params
    api_token = params[:api_token]
    # end params

    user = User.find_by(api_token:api_token)
    if !user
      return {
        success: false,
        errorMessage: "Invalid username/password"
      }.to_json
    end
    {
      success: true,
      data: user.canvasboards
    }.to_json
  end



  post "/create_canvas" do
    # params
    api_token = params[:api_token]
    canvas_name = params[:canvas_name]
    # end params
     
    user = User.find_by(api_token:api_token)
    if !user
      return {
        success: false,
        errorMessage: "Invalid username/password"
      }.to_json
    end
    canvasboard = Canvasboard.create(identifier:SecureRandom.uuid, canvas_name: canvas_name)
    Collaboration.create(user: user, canvasboard: canvasboard)
    {
      success: true,
      data: canvasboard
    }.to_json
  end

  post "/clear_canvas_paths" do
    # params
    api_token = params[:api_token]
    canvasboard_identifier = params[:canvasboard_identifier]
    # end params
     
    user = User.find_by(api_token:api_token)
    if !user
      return {
        success: false,
        errorMessage: "Invalid username/password"
      }.to_json
    end

    found_canvas = Canvasboard.find_by(identifier:canvasboard_identifier)
    if !found_canvas
      return {
        success: false,
        errorMessage: "Invalid canvas board"
      }.to_json
    end


    found_canvas.clear_canvas_paths
    {
      success: true
    }.to_json
    
  end

  delete "/canvas_board" do
    # params
    api_token = params[:api_token]
    canvasboard_identifier = params[:canvasboard_identifier]
    # end params
     
    user = User.find_by(api_token:api_token)
    if !user
      return {
        success: false,
        errorMessage: "Invalid username/password"
      }.to_json
    end

    found_canvas = Canvasboard.find_by(identifier:canvasboard_identifier)
    if !found_canvas
      return {
        success: false,
        errorMessage: "Invalid canvas board"
      }.to_json
    end


    found_canvas.destroy
    
    {
      success: true
    }.to_json
    
  end


  get "/users" do 
    User.all.to_json
  end

  get "/canvasboards" do 
    Canvasboard.all.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json(include: :collaborations)
  end


#using this to fetch collaborators 
  get "/canvasboards/:identifier" do
    canvas = Canvasboard.find_by(identifier: params[:identifier])
    canvas.to_json(only: [:id], include: {users: { only: [:id, :first_name, :last_name, :username]}})

  end

delete "/canvasboards/:identifier/users/:id" do
    canvas = Canvasboard.find(params[:identifier])
    collaborations = canvas.collaborations
    collaboration = collaborations.where(user_id: :id)
    collaboration.destroy

  end


end
