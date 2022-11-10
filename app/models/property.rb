class Property < ActiveRecord::Base
    belongs_to :agency 
    belongs_to :client 
end