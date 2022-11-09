class Book < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
	belongs_to :genre
    
	def self.search(search)
		if search
			genre = Genre.find_by(title: search)

		else
			Book.all
		end
	end

end