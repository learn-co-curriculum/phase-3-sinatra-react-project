class Playlist < ActiveRecord::Base
    has_many :playlist_songs, dependent: :destroy
    has_many :songs, through: :playlist_songs
    belongs_to :user
    # has_many :artists, through: :songs
    # has_many :albums, through: :songs

end