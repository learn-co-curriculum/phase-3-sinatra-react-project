

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/destinations" do
    destination = Destination.find_or_create_by(destination_params).to_json
  end

  private
  def destination_params
    allowed_params = %w(location start_date end_date)
    params.select {|param,value| allowed_params.include?(param)}
  end

end
