class User < ActiveRecord::Base
    has_many :suggestions
end