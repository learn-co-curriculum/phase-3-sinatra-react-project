class MoodsController < ApplicationController

    get "/chill" do
        activities = Activity.all.where(mood_id: 1)
        activities.to_json()
    end

    get "/adventurous" do
        activities = Activity.all.where(mood_id: 2)
        activities.to_json()
    end

    get "/hungry" do
        activities = Activity.all.where(mood_id: 3)
        activities.to_json()
    end

    get "/creative" do
        activities = Activity.all.where(mood_id: 4)
        activities.to_json()
    end

    get "/hype" do
        activities = Activity.all.where(mood_id: 5)
        activities.to_json()
    end



end