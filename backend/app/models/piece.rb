class Piece <ActiveRecord::Base 
    belongs_to :buyer
    belongs_to :seller
    has_many :reviews
end