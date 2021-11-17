class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/animals" do

    Animal.all.to_json
  end

  get "/animals/:id" do
    animal = Animal.find(params[:id])
    animal.name.to_json
  end

  get "/shelters" do
    Shelter.all.to_json
  end

  get "/shelters/:id" do
    shelter = Shelter.find(params[:id])
    shelter.name.to_json
  end

  get "/applications" do
    AdoptionApplication.all.to_json
  end

  post "/animals" do
    shelter = Shelter.find_by_name(params[:shelter]).id
    animal = Animal.create(
      name: params[:name],
      animal_type: params[:animal_type],
      breed: params[:breed],
      img_url: params[:img_url],
      shelter_id: shelter
    )
    animal.to_json
  end

  patch "/animals/:id" do
    shelter = Shelter.find_by_name(params[:shelter]).id
    animal = Animal.find(params[:id]).update(
      name: params[:name],
      animal_type: params[:animal_type],
      breed: params[:breed],
      img_url: params[:img_url],
      shelter_id: shelter
    )
    animal.to_json
  end

end
