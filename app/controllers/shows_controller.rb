class ShowsController < ApplicationController
    
  get "/shows" do
    shows = Show.all
    shows.to_json
  end

  get "/show/:id" do 
    show = Show.find(params[:id])
    show.to_json(include: :reviews)
  end
end