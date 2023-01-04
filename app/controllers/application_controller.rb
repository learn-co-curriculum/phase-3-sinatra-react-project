class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  #add your routes here 
  get "/activities" do
    activities = Activity.all
    activities.to_json
  end

  

end
