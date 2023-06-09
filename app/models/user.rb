class User < ActiveRecord::Base
    belongs_to :product
    belongs_to :carts
end