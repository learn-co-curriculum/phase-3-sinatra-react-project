class UserController < ApplicationController
  get "/users" do
    user = User.all 
    user.to_json
  end

  get "/jedi" do
    jedi = User.where(jedi_or_sith: "Jedi")
    jedi.to_json
  end

  get "/sith" do
    jedi = User.where(jedi_or_sith: "Sith")
    jedi.to_json
  end

  get '/users/:id' do
    id = User.find(params[:id])
    id.to_json
  end

  delete '/users/:id' do
    id = User.find(params[:id])
    id.to_json
  end
end