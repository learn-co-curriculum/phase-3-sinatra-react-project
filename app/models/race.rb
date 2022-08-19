class Race < ActiveRecord::Base
    has_many :characters
    has_many :spells, through: :characters
    has_many :feats, through: :characters
end