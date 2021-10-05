class Seller <ActiveRecord::Base 
    has_many :pieces
    has_many :buyers, through: :pieces
end