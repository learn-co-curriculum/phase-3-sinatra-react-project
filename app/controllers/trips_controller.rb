class TripsController < ApplicationController

    get "/trips" do
        trip = Trip.all
        trip.to_json
    end

    get "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.to_json
    end 

    post "/trips" do
        trip = Trip.create(
            museum_id: params[:museum_id],
            city_id: params[:city_id],
            trip_title: params[:trip_title],
            notes: params[:notes])
        trip.to_json
    end


      patch "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.update(
          museum_id: params[:museum_id],
          city_id: params[:city_id],
          trip_title: params[:trip_title],
          notes: params[:notes])
        trip.to_json
      end
    
    
      delete "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.destroy
        trip.to_json
      end

    
end