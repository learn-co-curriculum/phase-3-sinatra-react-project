class Location < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :household

end