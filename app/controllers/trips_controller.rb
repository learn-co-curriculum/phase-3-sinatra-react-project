class TripsController < ApplicationController

    get "/trips" do
        trip = Trip.all
        trip.to_json(include: :visits)
    end

    get "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.to_json(include: :visits)
    end 

    post "/trips" do
        trip = Trip.create(
            trip_title: params[:trip_title])
        trip.to_json
    end

    post "/trips/:id" do
      trip = Trip.create(
          id: params[:id],
          trip_title: params[:trip_title])
      trip.to_json
  end


      patch "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.update(
          trip_title: params[:trip_title])
        trip.to_json
      end
    
    
      delete "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.destroy
        trip.to_json
      end

    
end