class CommunicationsController < ApplicationController
  get "/communications" do
    Communication.all.to_json
  end


  get "/communications/:id" do
    Communication.find(params[:id]).to_json
  end
  

 post '/communications' do
    communication = Communication.create(
      time: params[:time],
      received: params[:received],
      comment: params[:comment],
      application_id: params[:application_id]
    )
    communication.to_json
  end

  patch '/communications/:id' do
    communication = Communication.find(params[:id])
    communication.update(
      time: params[:time],
      received: params[:received],
      comment: params[:comment]
      
    )
    communication.to_json
  end

  delete "/communications/:id" do
    Communication.find(params[:id]).destroy.to_json
  end
  

end