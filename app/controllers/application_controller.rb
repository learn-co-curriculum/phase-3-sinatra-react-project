class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/animals" do
    Animal.all.to_json
  end

  get "/shelters" do
    Shelter.all.to_json
  end

  get "shelters/:id" do
    binding.pry
    shelter = Shelter.find(params[:id])
    shelter.to_json
  end

  get "/applications" do
    AdoptionApplication.all.to_json
  end

end
