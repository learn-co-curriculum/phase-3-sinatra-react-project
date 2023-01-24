class FarmsController < ApplicationController

    get "/farms" do
        Farm.all.to_json(include: [:products])
    end

    get "/farms/:id" do
        farm = find_farm
        farm.to_json
    end

    post "/farms" do #be sure to add error after create
        # binding.pry
        farm = Farm.create(name: params["name"])
        if farm.id
            halt 201, farm.to_json
        else 
            halt 400, farm.errors.full_messages.to_sentence.to_json
        end
    end

    get "/farms/:farm_id/products/:id" do
        farm = find_nested_farm
        if farm 
            product = farm.products.find{|p| p.id == params["id"].to_i}
            if product 
                product.to_json
            else
               { message: "Error, did not find product #{params["id"]}"}.to_json
            end
        else   { message: "Error, did not find farm #{params["farm_id"]}"}.to_json
        end
    end

    private

    def find_farm
        Farm.find_by(id: params["id"])
    end

    def find_nested_farm
        Farm.find_by(id: params["farm_id"])
    end

end