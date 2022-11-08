class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  before do
    response.headers['Access-Control-Allow-Origin'] = "*"
  end

  #enable CORS prefLight requests
  options "*" do
    response.headers['Access-Control-Allow-Method'] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
  end
  
  # Add your routes here
  get "/" do
    { message: "Am Lucky to have a code that works on first instance" }.to_json
  end

  # get all users in the database
  get "/api/users" do
    User.all.to_json
  end

  #Get all users by ID
  get "/api/users/:id" do
    User.find(params[:id]).to_json
  end


  post "/api/users" do

    User.create(
      username: params[:username],
      email: params[:email],
      phone_number: params[:phone_number],
      gender: params[:gender],
      age: params[:age]
     )
  end

  put "/api/users/:id" do
    user = User.find(params[:id])
    user.update(
      username: params[:username]? params[:username]: user[:username],
      email: params[:email]? params[:email]: user[:email],
      phone_number: params[:phone_number]? params[:phone_number]: user[:phone_number],
      gender: params[:gender]? params[:gender]: user[:gender],
      age: params[:age]? params[:age]: user[:age]
    )

    user.to_json
  end

  delete "/api/users/:id" do
    user = User.find(params[:id])
    user.destroy

    {message:"Deleted Successfully"}.to_json
  end


end
