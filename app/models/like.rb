class Like < ActiveRecord::Base
    has_many :matches
    belongs_to :user, foreign_key: :user_id
end