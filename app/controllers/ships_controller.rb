class ShipsController < ApplicationController
  
    get "/ships" do 
        Ship.all.to_json #(get_ship_json_config)
    end
    
    get "/ships/:id" do 
        find_ship
        @ship.to_json
      end

    post "/ships" do 
      ship = Ship.create(ship_params)
      ship.to_json
    end
  
    patch "/ships/:id" do 
      find_ship
      @ship.update(ship_params)
      @ship.to_json
    end
     
    delete "/ships/:id" do 
      find_ship
      @ship.destroy
    end
  
    private 

    def find_ship
        @ship = Ship.find(params[:id])
    end

    def ship_params
      params.permit(:character1_id, :character2_id, :ship_name)
    end
  
    def get_ship_json_config()
      {
        methods: [:formatted_time]
      }
    end
  end