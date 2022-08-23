class User < ActiveRecord::Base
  belongs_to :lightsaber
  has_many :lightsaberColors, through: :lightsaber 
  has_many :lightsaberStyles , through: :lightsaber
  has_many :lightsaberVariations, through: :lightsaber
end