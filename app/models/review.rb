class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :customer
end