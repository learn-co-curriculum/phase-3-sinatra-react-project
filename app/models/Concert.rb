class Concert < ActiveRecord::Base
  belongs_to :city
  belongs_to :band
end