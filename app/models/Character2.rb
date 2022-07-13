class Character2 < ActiveRecord::Base
  has_many :ships
  has_many :comments, through: :ships
  has_many :character1s, through: :ships

end