class User < ActiveRecord::Base
    has_many :messages, dependent: :destroy
    has_many :chatrooms, through: :messages
    
end