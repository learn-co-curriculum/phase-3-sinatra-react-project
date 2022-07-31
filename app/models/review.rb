class Review < ActiveRecord::Base
    belongs_to :plant
    belongs_to :user
  end