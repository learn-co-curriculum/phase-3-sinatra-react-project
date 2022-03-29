class PatientsController < ApplicationController
    get "/patients" do 
        patients = Patient.all
        patients.to_json
    end 

    get "/patients/:id" do 
        patient = Patient.find(params[:id])
        patient.to_json(include: :appointments)
    end

    
end