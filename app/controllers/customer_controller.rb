class CustomersController < ApplicationController
    
    get '/customers' do 
        customers = Customer.all
        customers.to_json
    end

    post '/customers' do
        customer = Customer.create(
            # something goes here
        )
    end

end