class User < ActiveRecord::Base
    has_many :matches
    has_many :receivers, through: :matches
    has_one :current_user
end


