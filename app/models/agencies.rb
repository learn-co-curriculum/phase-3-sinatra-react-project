class Agency < ActiveRecord::Base
  has_many :properties
  has_many :clients, through: :properties
end

