class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/apartments" do
    all_apartments = Apartment.all 
    all_apartments.to_json
  end

  get "/apartments-rent/:rent" do
    apartment_by_rent = Apartment.find_by(rent: params[:rent])
    apartment_by_rent.to_json
  end

  get "/apartments-name/:name" do
    apartment_by_name = Apartment.find_by(title: params[:name]) #change this to lower case
    apartment_by_name.to_json
  end

  get "/locations" do 
    all_locations = Location.all 
    all_locations.to_json
  end

  get "/apartment-by-location/:location" do
    location = Location.find_by(name: params[:location])
    location.apartments.to_json
  end
  
  # get "apartments-by-rooms/:rooms" do
  #   by_rooms = Apartment.find_by(room: params[:rooms])
  #   by_rooms.to_json
  # end

  get "/appointments" do
    all_appointments = Appointment.all 
    all_appointments.to_json
  end

  post "/appointments" do
    new_appointment = Appointment.create(
      client_id: params[:client_id],
      apartment_id: params[:apartment_id]
    )
  end

end
