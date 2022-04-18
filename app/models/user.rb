class User < ActiveRecord::Base
    has_many :creatures
    has_many :created_creature

end