class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/creature" do
    @creature = Creature.all 
    return @creature.to_json
    
  end

  post "/species" do
    @species = Species.new(species_name: params[:species_name], description: params[:description])
    if @species.save
      return "Species created"
    else
      return "Error: Species not created"
    end
  end

end