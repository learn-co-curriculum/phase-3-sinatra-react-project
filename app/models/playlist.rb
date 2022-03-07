class Playlist < ActiveRecord::Base
    has_many :songs
    belongs_to :user
    has_many :artists, through: :songs
    has_many :albums, through: :songs

end