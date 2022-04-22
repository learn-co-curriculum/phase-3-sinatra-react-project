class VisitsController < ApplicationController

get "/visits" do
    visit = Visit.all
    visit.to_json
end

get "/visits/:id" do
    visit = Visit.find(params[:id])
    visit.to_json
end 

post "/visits" do
    visit = Visit.create(
        museum_id: params[:museum_id],
        city_id: params[:city_id],
        trip_id: params[:trip_id])
        # notes: params[:notes])
    visit.to_json
end

post "/visits/:id" do
  visit = Visit.create(
      # id: params[:id],
      museum_id: params[:museum_id],
      city_id: params[:city_id],
      trip_id: params[:trip_id])
      # notes: params[:notes])
  visit.to_json
end


  patch "/visits/:id" do
    visit = Visit.find(params[:id])
    visit.update(
      museum_id: params[:museum_id],
      city_id: params[:city_id],
      trip_id: params[:trip_id],
      notes: params[:notes])
    visit.to_json
  end


  delete "/visits/:id" do
    visit = Visit.find(params[:id])
    visit.destroy
    visit.to_json
  end


end