class Drink < ActiveRecord::Base
    has_many :users
    has_many :emojis, through: :users
end