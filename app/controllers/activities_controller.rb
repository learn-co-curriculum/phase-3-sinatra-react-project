class ActivitiesController < ApplicationController

    get '/activities' do 
        activities = Activity.all
        activities.to_json()
    end

    get '/activities/favorites' do 
        activities = Activity.all.where(:favorite => true)
        activities.to_json()
    end

    patch '/activities/:id' do 
        
        activity = Activity.find(params[:id])
        activity.update(favorite: params[:favorite])
        activity.to_json()
    end

end