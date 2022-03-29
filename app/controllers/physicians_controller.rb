class Physicians < ApplicationController
    get "/physicians" do 
        physician = Physicians.all
        physician.to_json
    end

    get "/physicians/:id" do 
        physician = Physician.find(params[:id])
        physician.to_json(include: :patients)
    end
end 