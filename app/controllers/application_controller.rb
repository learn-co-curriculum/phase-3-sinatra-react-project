class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Batten the hatches! The seas of love are stormy!!!" }.to_json
  end

end
