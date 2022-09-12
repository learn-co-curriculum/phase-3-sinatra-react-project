class User < ActiveRecord::Base
    has_many :characters
    has_many :templates, through: :characters
    
end
