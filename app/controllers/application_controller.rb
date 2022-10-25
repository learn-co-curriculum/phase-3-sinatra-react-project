class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Tutor Routes
  get "/tutors" do
    tutors = Tutor.all
    tutors.to_json
  end

  get "/tutors/:id" do
    tutor = Tutor.find(params[:id])
    tutor.to_json(include: :appointments)
  end

  # Student Routes
  get "/students" do
    students = Student.all
    students.to_json
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json(include: :appointments)
  end

  post "/students" do
    student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      location: params[:location],
      subject: params[:subject]
    )
    student.to_json
  end

  patch "/students/:id" do
    student = Student.find(params[:id])
    student.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      location: params[:location],
      subject: params[:subject]
    )
    student.to_json
  end

  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end

  # Appointment Routes
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
      notes: params[:notes],
      location: params[:location],
      tutor_id: params[:tutor_id],
      student_id: params[:student_id]
    )
    appointment.to_json
  end

  patch "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.update(
      date: params[:date],
      time: params[:time],
      notes: params[:notes],
      location: params[:location],
      tutor_id: params[:tutor_id],
      student_id: params[:student_id]
    )
    appointment.to_json
  end

  delete "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end

end