class Ship < ActiveRecord::Base
  belongs_to :characters
  has_many :comments

end