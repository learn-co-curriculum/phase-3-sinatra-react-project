class CharactersController < ApplicationController

  # GET: /characters
  get "/characters" do
    Character.all.to_json( except: [:created_at, :updated_at])
  end

  # GET: /characters/new
  get "/characters/new" do
    ## does this need to stay? Ryry
  end

  # POST: /characters
  post "/characters" do
    character = Character.create(name: params[:name], description: params[:description])
    if character.id
    ##binding.pry
    halt 201, character.to_json
    else
      halt 400, character.errors.full_messages.to_sentence.to_json
    end
  end

  # GET: /characters/5
  get "/characters/:id" do
    
  end

  # GET: /characters/5/edit
  get "/characters/:id/edit" do
    
  end

  # PATCH: /characters/5
  patch "/characters/:id" do
    
  end

  # DELETE: /characters/5/delete
  delete "/characters/:id/delete" do
    
  end
end
