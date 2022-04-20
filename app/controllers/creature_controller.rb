class CreatureController < ApplicationController


    get "/creature" do
        if check_login
            Creature.all.to_json
        else
            return {login_error: false}.to_json
        end
    end

    patch "/creature/:id" do
        if check_login
            creature = Creature.find_by_id(params[:id])
            creature.update(creature_params)
            creature.to_json
        else 
            return {login_error: false}.to_json
        end
    end

    private

    def creature_params
        allowed_params = %w(creatue_type film image_url)
        params.filter do |param, value|
          allowed_params.include?(params)
        end
    end
end
