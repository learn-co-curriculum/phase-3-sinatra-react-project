class Lightsaber < ActiveRecord::Base 
  belongs_to :user
  belongs_to :lightsaberColor 
  belongs_to :lightsaberStyle
  belongs_to :lightsaberVariation
end