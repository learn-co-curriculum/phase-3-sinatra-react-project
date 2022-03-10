class CriticsController < ApplicationController
    
    get '/critics' do
        critics = Critic.all
        critics.to_json(
            only: [:critic_name]
        )
    end

    get '/critics/:id' do
        critic = Critic.find(params[:id])
        critic.to_json(
            include: :reviews
        )
    end

    post '/critic_by_name' do
        name = params["name"]
        critic = Critic.find_by name: name
        if critic == nil
            critic = Critic.create(name: name, image: "https://images.fandango.com/cms/assets/5b6ff500-1663-11ec-ae31-05a670d2d590--rtactordefault.png")
        end
        critic.to_json
    end

end