class CharactersController < ApplicationController
  
    get "/characters" do 
        Character1.all.to_json #(get_character_json_config)
    end
  
    get "/characters/:id" do 
      find_character 
      @character.to_json #(get_character_json_config(
      #   include_ships: true
      # ))
    end
    
    # post "/characters"do 
    #   character = Character1.create(character_params)
    #   character.to_json
    # end
  
    # patch "/characters/:id" do 
    #   find_character
    #   @character.update(character_params)
    #   @character.to_json
    # end
      
    # delete "/characters/:id" do 
    #   find_character
  
    #   @character.destroy
    #   # status 204 # this was a successful request
    # end
  
    private 
  
    def find_character 
      @character = Character1.find(params[:id])
    end
  
    # def get_character_json_config(include_ships: false)
    #   options = { methods: [:gender] }
    #   if include_ships
    #     options.merge!({
    #       include: {
    #         ships: {
    #           methods: [:formatted_time]
    #         }
    #       }
    #     })
    #   end
    #   options
    # end
  
    def character_params
      allowed_params = %w(anime_id anime_name anime_image character_image id gender name desc)
      params.select { |k,v| allowed_params.include?(k) }
    end
  
  end