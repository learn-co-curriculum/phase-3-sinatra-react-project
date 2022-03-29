class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

 
  post '/login' do 
  user = User.find_by(:username => params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id ] = user.id 
    redirect to "/patients"
  else 
    flash[:error] = "Not this time pal."
    redirect to '/'
    end
  end


end
