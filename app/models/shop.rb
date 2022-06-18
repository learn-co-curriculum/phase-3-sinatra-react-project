class Shop < ActiveRecord::Base
    belongs_to :coffee
    belongs_to :customer
end