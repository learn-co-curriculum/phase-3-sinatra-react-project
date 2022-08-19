class Character < ActiveRecord::Base
    belongs_to :race
    belongs_to :klass
    has_many :feats, through: :klass
    has_many :spells, through: :klass
end