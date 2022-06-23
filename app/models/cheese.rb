class Cheese < ActiveRecord::Base
    has_many :comments
    has_many :ratings
end