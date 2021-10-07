class Piece <ActiveRecord::Base 
    belongs_to :buyer
    belongs_to :seller
    has_many :reviews

    def description

        puts %Q[This work originates from #{self.city} and was created by {artist}. The medium used was {medium} and the dimensions are {dimensions}.]
    end

    def average
    end
end