class Concert < ActiveRecord::Base
  belongs_to :city
  belongs_to :band
  has_many :eateries, through: :city
end