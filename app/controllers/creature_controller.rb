class CreatureController < ApplicationController
    get "/creature" do
        @creature = Creature.all 
        return @creature.to_json
    end
end
