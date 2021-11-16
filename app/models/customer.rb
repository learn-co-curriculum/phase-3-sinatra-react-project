class Customer < ActiveRecord::Base
has_many :seats
has_many :planes, through: :seats


end