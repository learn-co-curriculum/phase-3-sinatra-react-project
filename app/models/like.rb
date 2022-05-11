class Like < ActiveRecord::Base
    # has_many :matches
    belongs_to :user, class_name: 'User'
    belongs_to :liked_user, class_name: 'User'
end