class Guest < ActiveRecord::Base
  belongs_to :table, dependent: :destroy
  validates :name, :number_of_guests, :reservation, presence: true
  
end