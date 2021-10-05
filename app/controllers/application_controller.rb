class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    allStudents = Student.all
    allStudents.to_json
  end

  get "/tutor" do
    allStudents = Tutor.all
    allStudents.to_json
  end

  get "/match" do
    allStudents = Match.all
    allStudents.to_json
  end

end
