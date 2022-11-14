class UserstocksJoin < ActiveRecord::Base 
    belongs_to :stock
    belongs_to :user 
end