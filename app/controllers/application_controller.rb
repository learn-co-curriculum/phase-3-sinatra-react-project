require "bcrypt"


VERY_UNSECRET_TOKEN = "some secret token"

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/create_user" do
    # params
    username = params[:username]
    password = params[:password]
    # end params

    api_token = BCrypt::Password.create(VERY_UNSECRET_TOKEN)
    user = User.create(username:username, password:password, api_token: api_token)
    user.to_json
  end

  post "/login" do
    # params
    username = params[:username]
    password = params[:password]
    # end params

    begin
      user = User.where(username:username, password:password).first
      if !user
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


  get "/get_canvas" do
    # params
    api_token = params[:api_token]
    canvasboard_identifier = params[:canvasboard_identifier]
    last_timestamp = params[:last_timestamp]
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

    {
      success: true,
      data: found_canvas.get_canvas_points_and_format(last_timestamp)
    }.to_json
  end

end
