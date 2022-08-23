class Animal < ActiveRecord::Base
    belongs_to :user
    has_many :donations
    has_many :comments
    has_many :likes
end