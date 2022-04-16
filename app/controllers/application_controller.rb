class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/doctors" do
    doctors = Doctor.all
    doctors.to_json
  end

  get "/patients" do
    patients = Patient.all
    patients.to_json
  end

  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end
end
