class ArtistsController < ApplicationController
 # index routes

 #Artists is Owners

#  get '/' do
#     "Hello let me see the art!"
#   end

#   get '/artists' do
#     "Hello World"
#   end

  #aka owners
  get '/artists' do
    artists = Artist.all
    artists.to_json(include: :paintings)
  end

  #artists show route (owners) this is a dynamic route
  # getting the request, parsing it, in the params hash and key of id and value is 4 or whatever the id is
  get '/artists/:id' do
  #binding.pry
    artist = Artist.find_by(id: params[:id])
    if artist 
        artist.to_json(include: :paintings)
    else
      "404 - Artist not found"
    end 
  end

end