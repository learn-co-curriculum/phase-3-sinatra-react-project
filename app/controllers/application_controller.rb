class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # index routes

  #aka dogs
  get "/paintings" do
    # { message: "Good luck with your project, Cara!" }.to_json
    paintings = Painting.all
    paintings.to_json
  end

  #aka dogs this is the add
  post "/paintings" do
    painting = Painting.create(params)
    painting.to_json
  end

  #aka dogs, delete does not return anything method delete
  delete "/paintings/:id" do 
    painting = Painting.find_by(id: params[:id])
    painting.destroy
  end

  patch "/paintings/:id" do
    painting = Painting.find_by(id: params[:id])
    painting.update(name: params[:name])
    painting.to_json
  end 

  #aka owners
  get "/artists" do
    artists = Artist.all
    artists.to_json(include: :paintings)
  end

  #artists show route (owners) this is a dynamic route
  # getting the request, parsing it, in the params hash and key of id and value is 4 or whatever the id is
  get "/artists/:id" do
  #binding.pry
    artist = Artist.find_by(id: params[:id])
    if artist 
        artist.to_json(include: :paintings)
    else
      "404 - Artist not found"
    end 
  end
  
  
end
