class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
   Movie.all.to_json
  end

end
