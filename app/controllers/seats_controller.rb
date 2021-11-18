class SeatsController < ApplicationController 

    get '/seats' do
        Seat.all.to_json(include: customers)
    end
end
