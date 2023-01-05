require 'pry'
class MaintenanceRequestsControllers < ApplicationController

    #CRUD
    #read
    get '/maintenancerequests' do 
        # maintreqs = MaintenanceRequest.all
        # maintreqs.to_json
        MaintenanceRequest.all.to_json
    end

    get '/maintenancerequests/:id' do
        maintreqs = MaintenanceRequest.find(params[:id])
        maintreqs.to_json
        #MaintenanceRequest.all.to_json
    end

    #create
    # {"urgency"=>"high",                      params
    #     "description"=>"this is a test",
    #     "expected_cost"=>175,
    #     "actual_cost"=>200,
    #     "date_opened"=>12252022,
    #     "date_closed"=>12262022}

    post '/maintenancerequests' do
        maintreqs = MaintenanceRequest.create(params)
        maintreqs.to_json
    end

    # #update


    patch '/maintenancerequests/:id' do
        maintreqs = MaintenanceRequest.find(params[:id])
        maintreqs.update(urgency: params[:urgency], description: params[description], expected_cost: params[:expected_cost], actual_cost: params[:actual_cost], date_opened: params[:date_opened], date_closed: params[:date_closed])
        maintreqs.to_json
    end

    #delete
    delete '/maintenancerequests/:id' do
        maintreqs = MaintenanceRequest.find(params[:id])
        maintreqs.destroy
    end




#
end


#be wary of caps, under_, naming convs....