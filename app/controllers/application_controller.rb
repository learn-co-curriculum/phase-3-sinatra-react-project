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

end
