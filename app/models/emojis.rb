class Emoji < ActiveRecord::Base
    belongs_to :student
    belongs_to :drink
end