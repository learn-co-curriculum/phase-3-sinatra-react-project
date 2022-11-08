class User < ActiveRecord::Base
    has_many :deliverables, through: :projects
    has_many :projects
end