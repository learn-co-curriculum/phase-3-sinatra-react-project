class User < ActiveRecord::Base
    has_many :todos
    has_many :todo_categories, through: :todos
    has_many :shopping_items
    has_many :shopping_categories, through: :shopping_items
    has_secure_password 
end