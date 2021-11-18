class PlaneController < ApplicationController

    get '/planes' do
        Plane.all.to_json.(include: pilots)
    end 
    

end