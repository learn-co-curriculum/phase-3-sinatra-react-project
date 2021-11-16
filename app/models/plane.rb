class Plane < ActiveRecord::Base
has_many :seats
has_many :pilots
has_many :customers, through: :seats

end