require "pry"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Lyric Finder !" }.to_json
  end

  get "/artist" do
    artist = Artist.all.order(:likes).reverse_order
    artist.to_json
  end

  get "/artist/:id" do
    artist = Artist.find(params[:id])
    artist.to_json
  end

  post "/artist" do
    artist = Artist.create(name:params[:name], image_url:params[:image_url], likes:true)
    artist.to_json
  end

  get "/genre" do
    genre = Genre.all.order(:title)
    genre.to_json
  end

  get "/genre/:id" do
    genre = Genre.find(params[:id])
    genre.to_json
  end

  get "/song" do
    song= Song.all
    song.to_json
  end

  get "/song/:id" do
    song = Song.find(params[:id])
    song.to_json
  end


  patch "/artist/:id" do
    artist = Artist.find(params[:id])
    artist.update(likes:params[:likes]).to_json
  end



delete "/song/:id" do
  song = Song.find(params[:id]).destroy
end


  post "/song" do
          song = Song.create(artist_id: params[:artist_id], genre_id: params[:genre_id], song_title: params[:song_title], release_date: params[:release_date])
  song.to_json
  end



end
