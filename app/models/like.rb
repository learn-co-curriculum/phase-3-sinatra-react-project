class Like < ActiveRecord::Base
    has_many :matches
    belongs_to :user
end