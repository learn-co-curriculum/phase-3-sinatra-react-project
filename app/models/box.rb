class Box < ActiveRecord::Base
    has_many :boxes
    has_many :upvotes
  end