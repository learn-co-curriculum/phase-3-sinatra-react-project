class DaysController < ApplicationController
    get '/days' do 
        days = Day.all 
        days.to_json
    end

    get '/days/:id' do 
        day = Day.find(params[:id])
        day.to_json
    end
end