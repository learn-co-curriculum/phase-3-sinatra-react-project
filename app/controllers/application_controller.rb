class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Destinations Paths
  post "/destinations" do
    destination = Destination.find_or_create_by(destination_params).to_json
  end



  
# Activities Paths
  post '/activities' do
    activity = Activity.find_or_create_by(
      activity: params[:activity],
      description: params[:description],
      start_time: params[:start_time],
      end_time: params[:end_time]
    ).to_json
  end

private
def destination_params
  allowed_params = %w(location start_date end_date)
  params.select {|param,value| allowed_params.include?(param)}
end

def activities_params
    allowed_params = %w(activity description start_time end_time)
    params.select {|param,value| allowed_params.include?(param)}
end


end
