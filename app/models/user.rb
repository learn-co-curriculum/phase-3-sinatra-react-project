require 'bcrypt'

class User < ActiveRecord::Base
    has_secure_password

    has_many :characters
    has_many :templates, through: :characters

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password_digest, presence: true
end
