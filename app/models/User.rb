class User < ActiveRecord::Base
    has_many :matches
    has_many :receivers, through: :matches
    has_many :messages
    has_many :message_receivers, through: :messages
end


