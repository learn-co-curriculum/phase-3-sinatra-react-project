class Character < ActiveRecord::Base
  has_many :ships
  has_many :characters, through: :ships


end

