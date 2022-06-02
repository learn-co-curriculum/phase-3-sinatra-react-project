class ProjectsController < ApplicationController
   
    get "/projects" do 
        serialize(Project.all)
      end

    get "/projects/:id" do
        project = Project.find(params[:id])
        serialize(project)
    end

    post "/projects" do
        car = Car.find_by(name: params[:name])
        project = Project.create(project_params)

        project.to_json(methods: [:name])
    end

    patch "/projects/:id" do
        project = Project.find(params[:id])
        project.update(project_params)
        serialize(project)
    end

    delete "/projects/:id" do
        project = Project.find(params[:id])
        project.destroy 
        serialize(project)
    end

    private
    def project_params
        allowed_params = %w(title time_required tools_required description)
        params.select {|param,value| allowed_params.include?(param)}
    end

    def serialize(project)
        project.to_json
    end
end