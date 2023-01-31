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
  
    get '/artists/:id/paintings' do
      # pry
      paintings = Painting.where(:artist_id => params[:id])
      paintings.to_json(include: :artist)
    end

  #artists show route (owners) this is a dynamic route
  # getting the request, parsing it, in the params hash and key of id and value is 4 or whatever the id is
  get '/artists/:id' do
    artist = Artist.find(params[:id]) 
    artist.to_json(include: :paintings)
    end 
  end

