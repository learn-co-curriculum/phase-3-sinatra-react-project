class StudentController < ApplicationController
    get "/students" do 
        Student.all.to_json
    end
end