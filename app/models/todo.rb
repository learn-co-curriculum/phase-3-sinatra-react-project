class Todo < ActiveRecord::Base 
belongs_to :user
validates :title, presence: { message: "must provide details" }
end