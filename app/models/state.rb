class State < ActiveRecord::Base
    has_many :parks
    has_many :lists, through: :parks
end