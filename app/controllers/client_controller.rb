class ClientController < ApplicationController
    get "/clients" do
        clients = Client.all
        clients.to_json
      end
    
      get "/clients/:id" do 
        client = Client.find(params[:id])
        client.to_json
      end
    
      post "/clients" do 
        client = Client.create(
          first_name: params[:first_name],
          last_name: params[:last_name],
        )
        client.to_json
      end
    
      patch "/clients/:id" do 
        client  = Client.find(params[:id])
        client.update(
          therapist_id: params[:therapist_id]
        )
        client.to_json
      end
end