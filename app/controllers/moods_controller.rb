class MoodsController < ApplicationController

    get "/chill" do
        

        activities = Activity.all.where(mood_id: 1)
        activities.to_json()
        
    end

end