class Ship < ActiveRecord::Base
  belongs_to :character1
  belongs_to :character2
  has_many :comments

end