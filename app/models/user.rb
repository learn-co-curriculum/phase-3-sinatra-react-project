class User < ActiveRecord::Base
    validates_presence_of :first_name, :last_name, :email, :password
    # has_secure_password
    
    has_many :logs
end