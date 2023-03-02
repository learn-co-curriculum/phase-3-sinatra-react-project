class User < ActiveRecord::Base 
    has_many :todos
    validates :name, presence:  { message: "must provide details" }

end