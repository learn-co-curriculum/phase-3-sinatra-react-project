class Household < ActiveRecord::Base
  has_many :users
  has_many :pets
  has_many :tasks
end