class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Destinations Paths
  post "/trips" do
    trip = Trip.find_or_create_by(trip_params).to_json
  end

  # Days Paths
  post "/days" do
    params[:dates].map {|date| Day.find_or_create_by(date: date, trip_id: params[:trip_id])}.to_json
  end

# Activities Paths
  post '/activities' do
    activity = Activity.create(activities_params).to_json
  end

  delete '/activities/:id' do
    activity = Activity.find(params[:id])
    activity.destroy
    activity.to_json
  end

private
def trip_params
  allowed_params = %w(location start_date end_date traveler_id)
  params.select {|param,value| allowed_params.include?(param)}
end

def day_params
  allowed_params = %w(date trip_id)
  params.select {|param,value| allowed_params.include?(param)}
end

def activities_params
    allowed_params = %w(name description start_time end_time day_id)
    params.select {|param,value| allowed_params.include?(param)}
end


end
