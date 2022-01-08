class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  ##
  # pets controller
  get "/pets" do
    pets = Pet.all
    pets.to_json
    #(include: except:) - patients.to_json({include:[clinic: {only: :clinic_name}], except: :clinic_id})
  end

  get "/pets/:user_id" do
    matches = Match.all.where("user_id = ?", params[:user_id]) #turn this line into an array of pet IDs
    pet_ids = matches.pluck(:pet_id)
    # pet_ids.to_json
    pets = Pet.where(id: [pet_ids])
    pets.to_json
  end

  get "/pets/not/:user_id" do
    matches = Match.all.where("user_id = ?", params[:user_id]) #turn this line into an array of pet IDs
    pet_ids = matches.pluck(:pet_id)
    # pet_ids.to_json
    pets = Pet.where.not(id: [pet_ids])
    pets.to_json
  end

  # post "/pets" do
  #   pet = Pet.create(params)
  #   pet.to_json
  # end

  # patch "/pets/:id:" do
  #   pet = Pet.find(params[:id])
  #   pet.update(params[adopted: true])
  #   pet.to_json
  # end

  ##
  # match controller
  get "/matches" do
    matches = Match.all
    matches.to_json
  end

  get "/matches/:id" do
    matches = Match.where("user_id = ?", params[:id])
    matches.to_json
  end

  post "/matches" do
    match = Match.create(
      user_id: params[:user_id],
      pet_id: params[:pet_id]
    )
    match.to_json
  end

  ##
  # agency controller
  get "/agencies" do
    agencies = Agency.all
    agencies.to_json
  end

  get "/agencies/:id" do
    pets = Pet.where("agency_id = ?", params[:id])
    pets.to_json
  end


  ##
  # user controller
  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end
  
  # patch "/users/:id" do
  #   user = User.find(params[:id])
  #   user.update(params)
  # end


end
