class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # if one wants the adopted/non-adopted animals: add query param => /animals?adopted=true[or false]
  get "/animals" do
    animals = Animal.all
    adopted = params[:adopted]
    if adopted != nil
      animals = animals.select { 
        |animal| adopted == "true" ? animal.adopted? : !animal.adopted? 
      }
    end
    animals_details = animals.map do |animal|
      Animal.get_detail(animal.id)
    end
    animals_details.to_json
  end

  get "/animals/:id" do
    animal = Animal.get_detail(params[:id])
    animal.to_json
  end

  get "/animals/:id/comments" do
    animal = Animal.find(params[:id])
    animal.comments.to_json
  end

end