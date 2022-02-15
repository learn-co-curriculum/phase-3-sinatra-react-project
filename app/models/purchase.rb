class Purchase < ActiveRecord::Base
    belongs_to :product
    belongs_to :supplier
end