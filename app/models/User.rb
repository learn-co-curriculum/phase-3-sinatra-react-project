class User < ActiveRecord::Base
    has_many :favorites
    has_many :stats
    has_many :books, through: :favorites
    has_many :books, through: :stats
end