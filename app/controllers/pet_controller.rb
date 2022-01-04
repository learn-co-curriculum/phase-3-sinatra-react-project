class PetController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/pets" do
      Pet.all.to_json
    end
  
    get "/pets/:id" do
      Pet.find(params[:id]).to_json
    end
  
    post "/pets" do
      Pet.create(
        first_name: params[:first_name],
        last_name: params[:last_name],
        age: params[:age],
        species: params[:species],
        household_id: params[:household_id]
      ).to_json
    end
  
    delete '/pets/:id' do
      pet = Pet.find(params[:id])
      pet.destroy
      pet.to_json
    end
end