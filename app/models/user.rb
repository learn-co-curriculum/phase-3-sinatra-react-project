class User < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews
  has_many :friends
  has_many :users, through: :friends
end
