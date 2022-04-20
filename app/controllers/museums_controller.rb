class MuseumsController < ApplicationController
    
    get "/museums" do
        museum = Museum.all
        museum.to_json(include: :city)
      end
  
      get "/museums/:id" do
        museum = Museum.find(params[:id])
        museum.to_json
      end
  
      post "/museums" do
        museum = Museum.create(
          name: params[:name],
          address: params[:address],
          zipcode: params[:zipcode],
          weburl: params[:weburl],
          image: params[:image],
          city_id: params[:city_id],
          trip_id: params[:trip_id],
          operating_hours: params[:operating_hours]
        )
        museum.to_json
      end
  
      patch "/museums/:id" do
        museum = museum.find(params[:id])
        museum = Museum.update(
          name: params[:name],
          address: params[:address],
          zipcode: params[:zipcode],
          weburl: params[:weburl],
          image: params[:image],
          city_id: params[:city_id],
          trip_id: params[:trip_id],
          operating_hours: params[:operating_hours]
        )
        museum.to_json
      end

      delete "/museums/:id" do
        museum = Museum.find(params[:id])
        museum.destroy
        museum.to_json
      end

    
end