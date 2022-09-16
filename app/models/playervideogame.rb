class PlayerVideoGame < ActiveRecord::Base
    belongs_to :video_game
    belongs_to :player
end