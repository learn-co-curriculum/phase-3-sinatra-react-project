class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    # Destinations Paths

    post "/notes" do
      note = Note.create(note_params).to_json
    end


    get "/trips/" do
      trips = Trip.all
      trips.to_json(include: {days: {include: :activities}})
    end

    get "/trips/:id" do
      trips = Trip.find(params[:id])
      trips.to_json(include: {days: {include: :activities}})
    end

    post "/trips" do
      trip = Trip.create(trip_params).to_json
    end

    # Days Paths
    get "/days/:id" do
      day = Day.find(params[:id])
      day.to_json(include: :activities)
    end

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

    def note_params 
      allowed_params = %w(note_text trip_id)
      params.select {|param,value| allowed_params.include?(param)}
    end

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



