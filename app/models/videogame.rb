class VideoGame < ActiveRecord::Base
   has_many :player_video_games
   has_many :players, through: :player_video_games
end