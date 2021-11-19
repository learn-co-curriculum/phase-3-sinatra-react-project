class SeatsController < ApplicationController 

    get '/seats' do
        Seat.all.to_json(include: :customer)
    end
end
# (include: customers)