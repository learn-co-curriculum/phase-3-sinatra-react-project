class CommunicationsController < ApplicationController
  get "/communications" do
    Communication.all.to_json
  end


  get "/communications/:id" do
    Communication.find(params[:id]).to_json
  end
  

  post '/communications' do
    validate_user = logged_in(user_id: params[:user_id], login_token: params[:login_token], application_id: params[:application_id])
    if validate_user[:success]
      communication = Communication.create(
        time: params[:time],
        received: params[:received],
        comment: params[:comment],
        application_id: params[:application_id]
      )
      {success: true, data: communication}.to_json
    else
      {success: false, message: validate_user[:message]}.to_json
    end
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