class Cart < ActiveRecord::Base
has_many :users
has_many :products, through: :users
    
end