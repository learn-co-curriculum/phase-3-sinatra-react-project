class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "This Art App Project is Awesome!" }.to_json
  end
end 