class CitiesController < ApplicationController

    get "/cities" do
        city = City.all
        city.to_json
      end
    
      get "/cities/:id" do
        city = City.find(params[:id])
        city.to_json
      end
  
    post "/cities" do
        city = City.create(
          name: params[:name],
          address: params[:address],
          zipcode: params[:zipcode],
          weburl: params[:weburl],
          image: params[:image],
          city_id: params[:city_id],
          trip_id: params[:trip_id],
          operating_hours: params[:operating_hours])
        city.to_json
      end
  
    patch "/cities/:id" do
        city = city.find(params[:id])
        city = City.update(
          name: params[:name],
          address: params[:address],
          zipcode: params[:zipcode],
          weburl: params[:weburl],
          image: params[:image],
          city_id: params[:city_id],
          trip_id: params[:trip_id],
          operating_hours: params[:operating_hours])
        city.to_json
      end

    delete "/cities/:id" do
        city = City.find(params[:id])
        city.destroy
        city.to_json
      end

end
