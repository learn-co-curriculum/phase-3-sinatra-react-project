class Order < ActiveRecord::Base
    belongs_to :Dog
    belongs_to :supplier
end