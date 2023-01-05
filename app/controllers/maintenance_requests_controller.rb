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
    post '/maintenancerequests' do
        
    end


#
end


#be wary of caps, under_, naming convs....