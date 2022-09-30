class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post '/review/:business_id' do

  end
  patch '/review/:business_id' do

  end

  delete '/review/:business_id' do

  end

end
