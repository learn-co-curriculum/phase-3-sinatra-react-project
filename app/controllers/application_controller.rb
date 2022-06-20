class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/students" do
    students = Student.all
    students.to_json
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json
  end


end
