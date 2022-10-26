class AppointmentController < ApplicationController
    get "/appointments" do 
        appointments = Appointment.all.order(:time)
        appointments.to_json(include: [:therapist, :client])
      end
    
      get "/appointments/:id" do 
        appointment = Appointment.find(params[:id])
        appointment.to_json(include: [:therapist, :client])
      end
    
      post "/appointments" do 
        appointment = Appointment.create(
          date: params[:date], 
          time: params[:time], 
          therapist_id: params[:therapist_id],
          client_id: params[:client_id]
        )
        appointment.to_json(include: [:therapist, :client])
      end

      patch "/appointments/:id" do 
        appointment = Appointment.find(params[:id])
        appointment.update(
          date: params[:date],
          time: params[:time],
        )
        appointment.to_json(include: [:therapist, :client])
      end

      delete '/appointments/:id' do 
        appointment = Appointment.find(params[:id])
        appointment.destroy
        appointment.to_json
      end
end