class Profile < ActiveRecord::Base
    has_many :matches
    has_many :users, through: :matches
end