class DaysController < ApplicationController
    get '/days' do 
        days = Day.all 
        days.to_json
    end
end