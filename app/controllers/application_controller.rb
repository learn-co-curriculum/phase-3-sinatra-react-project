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
    artist.to_json(only: [:name, :likes, :image_url], include: { 
      songs: { only: [:song_title, :release_date], include: { 
        genre: { only: [:title] }
      } }
      })
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

end
