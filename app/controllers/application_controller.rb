class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/tutors" do
    tutors = Tutor.all
    tutors.to_json
  end

  get "/tutors/:id" do
    tutor = Tutor.find(params[:id])
    tutor.to_json(include: :appointments)
  end

  get "/students" do
    students = Student.all
    students.to_json
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json(include: :appointments)
  end

  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end

  get "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.to_json
  end

end
