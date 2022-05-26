class Location < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :household

  validates :name, presence: true, uniqueness: true
  # validates :address, presence: true, uniqueness: true

end