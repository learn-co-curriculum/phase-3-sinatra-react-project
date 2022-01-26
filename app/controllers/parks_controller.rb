class ParksController < ApplicationController
    
    get '/parks' do
        Park.all.to_json
    end

    patch '/parks/:id' do
        park = Park.find(params[:id])
        park.update(list_id: params[:list_id])
    end

    # needs to be checked
    post '/parks' do
        park = Park.create(park_name: params[:park_name], description: params[:description], fee: params[:fee], image_url: params[:image_url],
            location: params[:location], states: params[:states], website: params[:website], state_id: params[:state_id], list_id: params[:list_id])
        park.to_json({include: :list, :state}
    end


end