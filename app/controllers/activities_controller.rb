class ActivitiesController < ApplicationController

    get '/activities' do 
        activities = Activity.all
        activities.to_json()
    end

end