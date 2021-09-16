require 'pry'

class LabController < ApplicationController
    get "/labs" do 
        Lab.all.to_json
    end

    get "/labs/:id" do 
        Lab.find(params[:id]).to_json
    end

    patch "/labs/:id" do
        lab = Lab.find(params[:id])
        lab.update(
            completed: params[:completed]
        )
        lab.to_json
    end

    delete "/labs/:id" do
        Lab.find(params[:id]).destory
    end
    
end