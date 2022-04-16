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

  get "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.to_json
  end

  post "/appointments" do
    appointment = Appointment.create(
      appointment_date: params[:appointment_date],
      appointment_duration: params[:appointment_duration],
      appointment_reason: params[:appointment_reason],
      appointment_type: params[:appointment_type],
      doctor_id: params[:doctor_id],
      patient_id: params[:patient_id],
    )
  end

  patch "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.update(
      appointment_date: params[:appointment_date],
      appointment_duration: params[:appointment_duration],
      appointment_reason: params[:appointment_reason],
      appointment_type: params[:appointment_type],
    )
  end

  delete "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end
end
