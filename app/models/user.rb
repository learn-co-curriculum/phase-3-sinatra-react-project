class User < ActiveRecord::Base
   has_many :animals
   has_many :comments
   has_many :likes
   has_many :donations
end