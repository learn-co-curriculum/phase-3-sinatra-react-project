class Seat < ActiveRecord::Base
belongs_to :customer
belongs_to :plane



end