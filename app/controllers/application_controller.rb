class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  #   get "/museums" do
  #     museum = Museum.all
  #     museum.to_json(include: :city)
  #   end

  #   get "/museums/:id" do
  #     museum = Museum.find(params[:id])
  #     museum.to_json
  #   end

  #   post "/museums" do
  #     museum = Museum.create(
  #       name: params[:name],
  #       address: params[:address],
  #       zipcode: params[:zipcode],
  #       weburl: params[:weburl],
  #       image: params[:image],
  #       city_id: params[:city_id],
  #       trip_id: params[:trip_id],
  #       operating_hours: params[:operating_hours]
  #     )
  #     museum.to_json
  #   end

  #   patch "/museums/:id" do
  #     museum = museum.find(params[:id])
  #     museum = Museum.update(
  #       name: params[:name],
  #       address: params[:address],
  #       zipcode: params[:zipcode],
  #       weburl: params[:weburl],
  #       image: params[:image],
  #       city_id: params[:city_id],
  #       trip_id: params[:trip_id],
  #       operating_hours: params[:operating_hours]
  #     )
  #     museum.to_json
  #   end

  # post "/trips" do
  #   trip = Trip.create(
  #     museum_id: params[:museum_id],
  #     city_id: params[:city_id],
  #     trip_title: params[:trip_title],
  #     notes: params[:notes]
  #   )
  #   trip.to_json
  # end


  # get "/trips" do
  #   trip = Trip.all
  #   trip.to_json
  # end

  # patch "/trips/:id" do
  #   trip = Trip.find(params[:id])
  #   trip.update(
  #     museum_id: params[:museum_id],
  #     city_id: params[:city_id],
  #     trip_title: params[:trip_title],
  #     notes: params[:notes]
  #   )
  #   trip.to_json
  # end

  # delete "/trips/:id" do
  #   trip = Trip.find(params[:id])
  #   trip.destroy
  #   trip.to_json
  # end


end
