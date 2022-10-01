class User < ActiveRecord::Base
    has_many :matches
    has_many :receivers, through: :matches
end
