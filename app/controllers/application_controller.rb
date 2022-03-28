class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/" do
    user = User.find_or_initialize_by(
      email: params[:email]
    )

    if user.new_record?
      user.update(
        name: params[:name],
        email_verified: params[:email_verified],
        nickname: params[:nickname],
        picture: params[:picture]
      )
    end

    user.to_json
  end

  post "/submit_user" do
    user = User.find_by(email: params[:user_data][:name])
    user.update(name: params[:form_data][:firstName] + " " + params[:form_data][:lastName])
    user.to_json
  end
end