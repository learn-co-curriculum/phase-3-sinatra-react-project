class Player < ActiveRecord::Base
  has_many :characters
end