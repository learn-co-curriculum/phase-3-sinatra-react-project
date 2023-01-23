Class Product < ActiveRecord::Base
    has_many :purchases
    belongs_to :farm
    
end