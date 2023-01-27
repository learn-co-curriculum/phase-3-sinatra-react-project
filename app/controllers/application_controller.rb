class ApplicationController < Sinatra::Base

  configure do
  set :public_folder, 'public'
  set :default_content_type, 'application/json'
  end
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
