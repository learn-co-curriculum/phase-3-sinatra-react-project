class Restaurant < ActiveRecord::Base
    has_many :restaurant_images
    has_many :reviews
    accepts_nested_attributes_for :restaurant_images
    has_many :users, through: :reviews
end