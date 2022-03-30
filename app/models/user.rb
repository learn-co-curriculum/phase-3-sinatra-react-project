class User < ActiveRecord::Base
    has_many :comments
    has_many :Boxes, through: :comments
  end