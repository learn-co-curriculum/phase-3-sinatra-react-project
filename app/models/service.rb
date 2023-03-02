class Service < ActiveRecord::Base 
    belongs_to :service_category
    has_many :workers
end 