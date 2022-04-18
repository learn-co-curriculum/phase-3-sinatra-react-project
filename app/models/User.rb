class User < ActiveRecord::Base
    has_many :game_relationships, dependent: :destroy
    has_many :games, through: :game_relationships
    has_many :messages, dependent: :destroy

    def add_game game, param_hash
        GameRelationship.create(
            user: self,
            game: game,
            owned?: param_hash.owned?,
            played?: param_hash.played?,
            liked?:param_hash.liked?,
            comment: param_hash.comment
        )
    end

    def print_all_comments
        comments = self.game_relationships.map do |relationship|
            relationship.game + " -- " +  relationship.comment 
        end
        #comments.each{|comment| puts comment}
        comments
    end
end