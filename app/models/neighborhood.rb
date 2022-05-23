class Neighborhood < ActiveRecord::Base
  has_many :locations
  has_many :households, through: :locations

  validates :name, presence: true, uniqueness: true

end