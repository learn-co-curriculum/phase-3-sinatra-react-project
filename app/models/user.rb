class User < ActiveRecord::Base
    has_many :playlists
    #if needed => has_many :songs, through: :playlists

    
end