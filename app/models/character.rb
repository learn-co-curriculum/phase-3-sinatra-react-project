class Character < ActiveRecord::Base
    belongs_to :race
    belongs_to :klass
    has_many :char_feats
    has_many :feats, through: :char_feats
    has_many :spells, through: :klass
end