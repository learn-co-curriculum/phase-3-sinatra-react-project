class Cheese < ActiveRecord::Base
has_many :comments
has_many :comments, through: :new_comments



end