class Todo < ActiveRecord::Base
    belongs_to :todo_category
    belongs_to :user
end