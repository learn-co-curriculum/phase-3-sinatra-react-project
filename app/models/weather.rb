class Weather < ActiveRecord::Base
    has_many :entries
    has_many :colors, through: :entries
end 