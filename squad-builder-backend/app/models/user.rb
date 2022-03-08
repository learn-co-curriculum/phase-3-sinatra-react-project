class User < ActiveRecord::Base
    has_many :games
    has_many :skills
    belongs_to :squad



end