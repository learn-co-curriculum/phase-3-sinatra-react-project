class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/tutors/:id/requests" do
    Match.where(tutor_id: params[:id]).to_json
  end

  get "/tutors/:id/profile" do
    Tutor.find(params[:id]).to_json
  end

  get "/tutors/:id/students" do
    Match.where(tutor_id: params[:id]).where(matched: true).map(&:student).to_json
  end

  get "/students/tutors" do
    Tutor.all.to_json
  end

  get "/students/:id/profile" do
    Student.find(params[:id]).to_json
  end

  get "/students/:id/tutors" do
    Match.where(student_id: params[:id]).where(matched:true).map(&:tutor).to_json
  end

  post "/tutor_sign_up" do
    new_tutor = Tutor.create(
    name: params[:name],
    location: params[:location],
    subjects: params[:subjects],
    rate: params[:rate],
    online_in_person: params[:online_in_person],
    gender: params[:gender],
    bio: params[:bio],
    availability: params[:availability],
    background_check: params[:background_check],
    timezone: params[:timezone],
    username: params[:username],
    password: params[:password],
    img: params[:img]
    )
    new_tutor.to_json
  end

  post "/student_sign_up" do
    new_student = Student.create(
      name: params[:name],
      grade: params[:grade],
      age: params[:age],
      timezone: params[:timezone],
      username: params[:username],
      password: params[:password],
      img: params[:img]
    )
    new_student.to_json 
  end

end
