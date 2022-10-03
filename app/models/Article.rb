class Article < ActiveRecord::Base
    has_many :favorites
    has_many :stats
    has_many :users, through: :favorites
    has_many :users, through: :stats
end