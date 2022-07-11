class Cuisine < ActiveRecord::Base
  has_many :restaurants
end
