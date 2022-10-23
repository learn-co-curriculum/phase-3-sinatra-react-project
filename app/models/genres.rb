class Genre < ActiveRecord::Base
  has_many :albums
end
