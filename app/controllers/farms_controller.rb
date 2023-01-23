class FarmsController < ApplicationController

    get "/farms" do
        Farm.all.to_json
    end

    get "/farms/:id" do
        farm = Farm.find_by(id: param["id"])
    end

    post "/farms/:id" do
        farm = Farm.create(name: param["name"])
    end

end