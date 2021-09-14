class LabController < ApplicationController
    get "/labs" do 
        Lab.all.to_json
    end
end