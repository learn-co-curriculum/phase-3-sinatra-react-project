class StudentController < ApplicationController
    get "/students" do 
        Student.all.to_json
    end

    get "/students/:id" do 
        Student.find(params[:id]).to_json
    end

end