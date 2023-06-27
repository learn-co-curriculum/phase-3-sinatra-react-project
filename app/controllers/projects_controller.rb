class ProjectsController < ApplicationController

    get "/projects" do
        @projects = Project.all 
        @projects.to_json(include: [:tasks])
    end
    
    get "/projects/:id" do
        project = Project.find(params[:id])
        project.to_json(include: [:tasks])
    end

    post "/projects" do
        # binding.pry
        project = Project.create(params) 
    # new - needs save to db, .create both at the same time
        if project.save
            project.to_json
        else
            { errors: project.errors.full_messages, status: "Cannot process POST request" }.to_json
        end
    end
    
    patch "/projects/:id" do
        project = Project.find(params[:id])
        project.update(
            name: params[:name],
            priority: params[:priority]
        )
        project.to_json
    end
        
        delete '/projects/:id' do
            project = Project.find(params[:id])
            project.destroy
            project.to_json
        end
        
    end