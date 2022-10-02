class Category < ActiveRecord::Base
    has_many :tasks
    has_many :users, through: :tasks

end