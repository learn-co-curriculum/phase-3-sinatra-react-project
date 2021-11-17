class SeatsController < ApplicationController 

    get '/seats' do
        Seat.all.to_json
    end
end
