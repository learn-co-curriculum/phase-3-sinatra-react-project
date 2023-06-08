class Credential < ActiveRecord::Base
    belongs_to :user

    # table consists of password as a column to store password hashes in DB
    # include BCrypt
    
    # # retrieve password hash from database

    # def password
    #     # @password ||= BCrypt::Password.new(password_hash)
    #     @password ||= Password.new(password)
    # end

    # def password=(new_password)
    #     @password = Password.create(new_password)
    #     self.password = @password
    # end
end