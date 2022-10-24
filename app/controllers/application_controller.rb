class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/therapists" do
    therapist = Therapist.all
    therapist.to_json
  end

  get "/therapists/:id" do 
    therapist = Therapist.find(params[:id])
    therapist.to_json
  end


  get "/therapists/:id/clients" do 
    therapist_clients = Therapist.find(params[:id]).clients
      therapist_clients.to_json
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

  get "/clients" do
    clients = Client.all
    clients.to_json
  end

  get "/clients/:id" do 
    client = Client.find(params[:id])
    client.to_json
  end

  post "/clients" do 
    client = Client.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      therapist_id: params[:therapist_id]
    )
    client.to_json
  end

  patch "/clients/:id" do 
    client  = Client.find(params[:id])
    client.update(
      therapist_id: params[:therapist_id]
    )
    client.to_json
  end

  get "/appointments" do 
    appointments = Appointment.all
    appointments.to_json
  end

  get "/appointments/:id" do 
    appointment = Appointment.find(params[:id])
    appointment.to_json
  end

  post "/appointments" do 
    appointment = Appointment.create(
      date: params[:date], 
      time: params[:time], 
      therapist_id: params[:therapist_id],
      client_id: params[:client_id]
    )
    appointment.to_json
  end

end
