class CriticsController < Sinatra::Base
    
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

end