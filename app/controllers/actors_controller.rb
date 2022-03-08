class ActorsController < Sinatra::Base
    get '/actors/:id' do
        actor = Actor.find(params[:id])
        actor.to_json(
            include: :movies
        )
    end
end