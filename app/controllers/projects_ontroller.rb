class ProjectController < ApplicationController

    set :default_content_type, 'application/json'
  
    # Add your routes here
    get '/:id/projects' do
      begin
        #user should get all projects
        @user_projects = User.find_by_id(params[:id]).projects
        # @user_projects = Project.all
        @user_projects.to_json
      rescue => e
        [422, {error: e.message}.to_json]
      end 
    end

    get '/projects/:id' do
      begin
        @project = Project.find_by_id(params[:id])
        @project.to_json
      rescue => e
        [422, {error: e.message}.to_json]
      end     
    end

    get '/users/:id' do
      begin
        @users = Project.find_by_id(params[:id]).users
        @users.to_json
      rescue => e
        [422, {error: e.message}.to_json]
      end
    end

    post '/members' do
      
      begin
        user= User.find_by_username(params[:username])
        project = Project.find_by_id(params[:project_id]).users

        if (user.id != nil)
          member = Member.create(       
            user_id: user.id,
            project_id: params[:project_id]
          )
          project.to_json
        end 
      rescue => e
        [422, {error: e.message}.to_json]
      end

    end
  
    post '/projects' do
      begin
        #user should create a project
        @new_project = Project.create(
          title: params[:title],
          description: params[:description]
        )
        members = Member.create(
          project_id: @new_project.id,
          user_id: params[:id]
        )
        @new_project.to_json
      rescue => e
        [422, {error: e.message}.to_json]
      end

    end
  
    patch '/projects/:id' do

      begin
          #user should update a project
        @updated_project = Project.find_by_id(params[:id])
        

        @updated_project.update(
          description: params[:description],
          status: params[:status].to_i

        )
        @updated_project.to_json
      rescue => e
        [422, {error: e.message}.to_json]
      end
    end
  
    delete '/projects/:id' do

      begin
        #user should delete project
        @project = Project.find_by_id(params[:id])
        @project.members.destroy_all
        @project.destroy
        @project.to_json
      rescue => e
        [422, {error: e.message}.to_json]
      end



    end

end