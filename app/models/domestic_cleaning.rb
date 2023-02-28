class DomesticCleaning < ActiveRecord::Base 
    belongs_to :service
    belongs_to :worker
    has_many :clients, through: :services  
    has_many :workers, trhough: :services 
end 