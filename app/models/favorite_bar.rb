class FavoriteBar < ActiveRecord::Base
    belongs_to :user
    belongs_to :bar
    has_many :reviews
end