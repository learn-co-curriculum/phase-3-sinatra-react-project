class TherapistController < ApplicationController
    
    get "/therapists" do
        therapist = Therapist.all
        therapist.to_json
  
        
      end
    
      get "/therapists/:id" do 
        therapist = Therapist.find(params[:id])
        therapist.to_json
      end
    
    
      get "/therapists/:id/clients" do 
        therapist_clients = Therapist.find(params[:id]).clients.order(:last_name)
          therapist_clients.to_json
      end
    
      get "/therapists/:id/appointments" do 
        therapist_appointments = Therapist.find(params[:id]).appointments.order(:time)
        therapist_appointments.to_json
      end
    
      post "/therapists" do
        therapist = Therapist.create(
          first_name: params[:first_name],
          last_name: params[:last_name],
          licensure: params[:licensure],
          years_of_experience: params[:years_of_experience]
        )
        therapist.to_json
      end
    
      delete "/therapists/:id" do 
        therapist = Therapist.find(params[:id])
        therapist.destroy
        therapist.to_json
      end
end