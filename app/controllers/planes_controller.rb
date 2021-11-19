class PlaneController < ApplicationController

    get '/planes' do
        Plane.all.to_json
    end 
    

end

# .(:include => :pilots)