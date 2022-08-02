require 'bcrypt'

class User < ActiveRecord::Base
has_many :canvasboards
has_many :canvaspaths

# users.password_hash in the database is a :string
include BCrypt

def password
  @password ||= Password.new(password_hash)
end

def as_json(options = {})
  super(options.merge({ except: [:password_hash] }))
end

end