class Game < ActiveRecord::Base
    has_many :game_relationships, dependent: :destroy
    has_many :users, through: :game_relationships

    def find_similar_games num
        sim_game = Game.where(
            "avg_play_time > ?", self.avg_play_time
            )
        #w/in 15 min avg playtime, genre = genre, num players == 

    end

    def print_all_comments
        comments = self.game_relationships.map do |relationship|
            relationship.comment 
        end
        comments
    end
end