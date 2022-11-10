class Client < ActiveRecord::Base
    has_many :properties, dependent: :destroy
    has_many :agencies, through: :properties
end