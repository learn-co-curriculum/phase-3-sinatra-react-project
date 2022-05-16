class Household < ActiveRecord::Base
  has_many :locations
  has_many :neighborhoods, through: :locations
  has_many :members

end