class City < ActiveRecord::Base
  has_many :eateries
  has_many :concerts
  has_many :bands, through: :concerts
end