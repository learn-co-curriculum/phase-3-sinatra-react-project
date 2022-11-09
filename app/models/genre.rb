class Genre < ActiveRecord::Base
	validates :title, presence: true
	has_many :books
end