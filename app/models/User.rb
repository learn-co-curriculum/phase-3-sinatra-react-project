class User < ActiveRecord::Base
    has_many :game_relationships, dependent: :destroy
    has_many :games, through: :game_relationships
end