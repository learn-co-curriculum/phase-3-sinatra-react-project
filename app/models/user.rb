class User < ActiveRecord::Base
    has_many :teams
    has_many :favorites
    has_many :players, through: :teams
    has_many :players, through: :favorites

end
