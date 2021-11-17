class ApplicationsController < ApplicationController
  get "/applications" do
    validate_user = logged_in(user_id: params[:user_id], login_token: params[:login_token])
    if validate_user[:success]
      User.find_by(id: params[:user_id]).applications.to_json
    else
      [].to_json
    end
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
    validate_user = logged_in(user_id: params[:user_id], login_token: params[:login_token])
    if validate_user[:success]
      application = Application.find(params[:id])
      if !application
        {success: false, message: 'Application not found.'}.to_json
      elsif application.user.id != params[:user_id]
        {success: false, message: 'You do not have permission to edit this application.'}.to_json
      else
        [:company, :position, :status, :logo_url, :favorite].each do |param|
          application[param] = params[param] if params.has_key?(param)
        end
        application.save
        {success: true, data: application}.to_json
      end
    else
      {success: false, message: validate_user[:message]}.to_json
    end
  end

  delete "/applications/:id" do
    Application.find(params[:id]).destroy.to_json
  end
end