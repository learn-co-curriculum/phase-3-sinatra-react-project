class ApplicationsController < ApplicationController
  get "/applications" do
    Application.all.to_json
  end

  get "/applications/:id" do
    Application.find(params[:id]).to_json
  end

  post '/applications' do
    validate_user = logged_in(user_id: params[:user_id], login_token: params[:login_token])
    if validate_user[:success]
      application = Application.create(
        company: params[:company],
        position: params[:position],
        status: params[:status],
        logo_url: params[:logo_url],
        user_id: params[:user_id]
      )
      {success: true, data: application}.to_json
    else
      {success: false, message: validate_user[:message]}.to_json
    end
  end

  patch '/applications/:id' do
    application = Application.find(params[:id])
    application.update(
      company: params[:company],
      position: params[:position],
      status: params[:status],
      logo_url: params[:logo_url]
    )
    application.to_json
  end

  delete "/applications/:id" do
    Application.find(params[:id]).destroy.to_json
  end
end