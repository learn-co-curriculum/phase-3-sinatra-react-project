class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    user = User.all
    user.to_json
  end

  get "/users/:id" do
    user_id = User.find(params[:id])
    user_id.to_json
  end

  get "/users/:id/user_name" do
    user_name = User.find(params[:id]).name
    user_name.to_json
  end

  post "/users" do
    new_user = User.create(name: params[:name])
    new_user.to_json
  end
  
  patch "/users/:id" do
    update_user = User.find(params[:id])
    update_user.update(name: params[:name]).to_json
  end

  get "/characters" do
    character = Character.all
    character.to_json
  end

  get "/characters/:id" do
    character_id = Character.find(params[:id])
    character_id.to_json
  end

  post "/characters" do 
    temp_id = Template.all.where(class_name: params[:class_name]).pluck(:id).sample
    new_character = Character.create(name: params[:name], history: params[:history], user_id: params[:user_id], template_id: temp_id)
    new_character.to_json
  end

  delete "/characters/:id" do
    delete_character = Character.find(params[:id])
    delete_character.destroy
    delete_character.to_json
  end 

  patch "/characters/:id" do
    update_character = Character.find(params[:id])
    update_character.update(name: params[:name], history: params[:history]).to_json
  end

  get "/templates" do
    template = Template.all
    template.to_json
  end

  get "/templates/:id" do
    template_id = Template.find(params[:id])
    template_id.to_json
  end
end

# PRIVATE

#   def character_params
#     {name: params[:name], history: params[:history], user_id: params[:user_id], template_id: params[:template_id]}
#   end