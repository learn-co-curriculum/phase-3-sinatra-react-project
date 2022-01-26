class ListsController < ApplicationController
    get '/lists' do
        List.all.to_json
    end 

    get '/lists/:id' do
        List.find(params[:id]).parks.to_json
    end

end