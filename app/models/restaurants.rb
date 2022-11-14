class Restaurant < ActiveRecord::Base
    has_many :restaurant_images
    has_many :reviews
    has_many :users, through: :reviews
end