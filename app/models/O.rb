class O < ActiveRecord::Base
    belongs_to :player
    belongs_to :game_instance
    end