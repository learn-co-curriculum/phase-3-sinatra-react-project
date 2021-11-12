class CommunicationsController < ApplicationController
  get "/communications" do
    Communication.all.to_json
  end

  get "/communications/:id" do
    Communication.find(params[:id]).to_json
  end
end