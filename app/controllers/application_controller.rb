
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/hello" do
      '<h2>Hello <em>World</em>!</h2>'
end

end


# get "/" do

# { message: "Good luck with your project!" }.to_json
# end
