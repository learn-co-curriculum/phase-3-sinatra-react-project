class Eatery < ActiveRecord::Base
  belongs_to :city
  has_many :concerts, through: :cities
  has_many :bands, through :concerts
end