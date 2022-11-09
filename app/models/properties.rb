class Property < ActiveRecord::Base
  belongs_to :client
  belongs_to :agency
end
