class Character < ActiveRecord::Base
    has_many :reviews
    has_many :locations, through: :reviews

    validates :name, presence: true
    validates :description, presence: true
end