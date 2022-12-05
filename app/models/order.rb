class Order < ActiveRecord::Base
    belongs_to :bubbletea
    belongs_to :customer
    
end