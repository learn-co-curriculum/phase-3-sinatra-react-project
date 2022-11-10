class Agency < ActiveRecord::Base
    has_many :properties, dependent: :destroy
    has_many :clients, through: :properties
end