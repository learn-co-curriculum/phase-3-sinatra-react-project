class Feat < ActiveRecord::Base
    has_many :char_feats
    has_many :characters, through: :char_feats
end