class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Am Lucky to have a code that works on first instance" }.to_json
  end

end
