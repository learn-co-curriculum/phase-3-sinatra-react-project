class User < ActiveRecord::Base
    has_many :characters
end