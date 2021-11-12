class ApplicationsController < ApplicationController
  get "/applications" do
    Application.all.to_json
  end

  get "/applications/:id" do
    Application.find(params[:id]).to_json
  end

  delete "/applications/:id" do
    Application.find(params[:id]).destroy.to_json
  end
end