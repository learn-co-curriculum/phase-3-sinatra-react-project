class User < ActiveRecord::Base
    has_many :collections
    has_many :songs, through: :collections
end