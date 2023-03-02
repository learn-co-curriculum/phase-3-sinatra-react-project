# this is category model
class Category < ActiveRecord::Base
    has_many :charities
    
end