class ShipsController < ApplicationController

    get "/ships" do
        Ship.all.to_json #(get_ship_json_config)
    end

    get "/ships/:id" do
        find_ship
        @ship.to_json
      end

    post "/ships" do
      ship = Ship.create(name: params[:name], character1_id: params[:character1_id], character2_id: params[:character2_id])
      ship.to_json
    end

    patch "/ships/:id" do
      find_ship
      @ship.update(name: params[:name], character1_id: params[:character1_id], character2_id: params[:character2_id])
      @ship.to_json
    end

    delete "/ships/:id" do
      find_ship
      @ship.destroy
      @ship.to_json
    end

    private

    def find_ship
        @ship = Ship.find(params[:id])
    end

    # def ship_params

    #   params.permit(:character1_id, :character2_id, :ship_name)
    #   binding.pry
    # end

    def get_ship_json_config()
      {
        methods: [:formatted_time]
      }
    end
  end