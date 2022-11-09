class Client < ActiveRecord::Base
  has_many :properties
  has_many :agencies, through: :properties
end
