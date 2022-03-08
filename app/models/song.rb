class Song < ActiveRecord::Base
    belongs_to :album
    has_many :playlist_songs
    has_many :playlists, through: :playlist_songs
    
end