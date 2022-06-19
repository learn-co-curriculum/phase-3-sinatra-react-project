class Student < ActiveRecord::Base
    has_many :emojis
    has_many :drinks, through: :emojis
end
