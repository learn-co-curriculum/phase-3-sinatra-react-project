class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to Jaden and Robert's Phase 3 Project" }.to_json
  end

end
