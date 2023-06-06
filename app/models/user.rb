class User < ActiveRecord::Base
    has_many :messages
    validates :name
    presence :true
end