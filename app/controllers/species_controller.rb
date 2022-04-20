class SpeciesController < ApplicationController

    post "/species" do
        @species = Species.new(species_name: params[:species_name], description: params[:description])
        if @species.save
            return @species.to_json
        else
            "Error: Species not created"
            end
    end
end
