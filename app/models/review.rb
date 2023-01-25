class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :bar
    has_many :favorite_bars
end