class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  #set default response headers
  before do
    content_type :json
    headers 'Access-Control-Allow-Origin' => '*'
  end


  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  ##CRUD agencies route
  get "/agencies" do
    Agency.all.to_json
    #(include: :properties)
  end

  get "/agencies/:id" do
    Agency.where(id: params["id"]).first.to_json
  end

  post "/agencies" do
    agency = Agency.new(params)

    if agency.save
      agency.to_json
    else
      halt 422
    end
  end

  post "/login/agencies" do
    agency = Agency.find_by(email: params[:email])
    puts agency.password
    puts params[:password]
    if agency && agency.password == params[:password]
      agency.to_json
    else
      halt 401
    end
  end

  delete "/agencies/:id" do
    agency = Agency.where(id: params["id"]).first

    if agency.destroy
      {succes: "ok"}.to_json
    else
      halt 500
    end
  end

###CRUD properties route
  get "/properties" do
    Property.all.to_json
  end

  get "/properties/:id" do
    Property.where(id: params["id"]).first.to_json
  end

  get "/props/get" do
    param = params["purpose"]
    Property.where(purpose: param).to_json
  end


  get "/myproperties/:id" do
    Property.where(owner: params["id"]).to_json
  end


  post "/properties" do
    property = Property.new(params)

    if property.save
      property.to_json
    else
      halt 422
    end
  end

  delete "/properties/:id" do
    property = Property.where(id: params["id"]).first

    if property.destroy
      {succes: "ok"}.to_json
    else
      halt 500
    end
  end

##CRUD clients route
  get "/clients" do
    Client.all.to_json
    #(include: :properties)
  end

  get "/clients/:id" do
    Client.where(id: params["id"]).first.to_json
  end

  post "/clients" do
    client = Client.new(params)

    if client.save
      client.to_json
    else
      halt 422
    end
  end

  post "/login/clients" do
    client = Client.where(email: params["email"]).first
    if !client
      halt 500
    elsif client.password == params["password"]
      client.to_json
    else
      halt 401
    end
    end

  delete "/clients/:id" do
    client = Client.where(id: params["id"]).first

    if client.destroy
      {succes: "ok"}.to_json
    else
      halt 500
    end
  end

end
