class Date < ActiveRecord::Base
  has_many :posts
  has_many :categories, through: :posts
end