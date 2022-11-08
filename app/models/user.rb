class User < ActiveRecord::Base
    has_many :deliverables
    has_many :projects, through: :deliverables
end