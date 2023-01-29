require "pry"
require './config/environment'
class CharactersController < ApplicationController

  # GET: /characters
  get "/characters" do
    Character.all.to_json( except: [:created_at, :updated_at])
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

  #GET: /characters/5
  get "/characters/:id" do
    binding.pry
    singleCharacter = Character.find_by(id: params[:id])
      if singleCharacter
       halt 200, singleCharacter.to_json(include: [:reviews, :locations],except: [:created_at, :updated_at])
      else 
       halt 400, "Golumns led you astray".to_json
      end
    end

  # get "/characters/:id" do
  #   binding.pry
  #   singleCharacter = Character.find_by(id: params[:id])
  #     singleCharacter.to_json(include: [:reviews, :locations],except: [:created_at, :updated_at])
  #   end
  

  # PATCH: /characters/5
  patch "/characters/:id" do

    character = Character.find(params[:id])
    character.update(name: params[:name], description: params[:description])
    character.to_json
    
  end

  # DELETE: /characters/5/delete
  delete "/characters/:id/delete" do
    character = Character.find(params[:id])
    character.destroy
    character.to_json
    
  end
end
