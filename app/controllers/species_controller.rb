class SpeciesController < ApplicationController

    get "/species" do
        if check_login
            Species.where(user_id: @user.id).to_json
        else
            return {login_error: false}.to_json
        end
    end

    post "/species" do
        return {message: "Invalid session"}.to_json if @user.nil?
        @species = @user.species.new(species_name: params[:species_name], description: params[:description])
        if @species.save
            return @species.to_json
        else
            "Error: Species not created"
            end
    end

    delete "/species" do
        return {message: "Invalid session"}.to_json if @user.nil?

        @species = Species.find_by(id: params[:id])
        @species.delete
        return {message: "Species Deleted"}.to_json
    end
end