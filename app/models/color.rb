class Color < ActiveRecord::Base
    has_many :entries
    has_many :weathers, through: :entries
end 