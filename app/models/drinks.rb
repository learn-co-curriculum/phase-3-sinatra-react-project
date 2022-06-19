class Drink < ActiveRecord::Base
    has_many :emojis
    has_many :students, through: :emojis
end