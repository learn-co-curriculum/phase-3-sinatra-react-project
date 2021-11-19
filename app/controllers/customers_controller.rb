class CustomersController < ApplicationController
    # route to get all customers
    get '/customers' do
        Customer.all.to_json 
    end

    post '/customers' do
     customer = Customer.create(
        first_name: params[:first_name],
        last_name: params[:last_name]
       ).to_json
       puts customer
       Seat.create(
           customer_id: JSON.parse(customer)['id'],
           plane_id: params[:plane_id],
           seat_number: params[:seat_number]
           
       )
    end

    delete '/customers/:id' do 
        customer = Customer.find(params[:id])
        customer.destroy.to_json
    end
end