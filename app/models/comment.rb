class Comment < ActiveRecord::Base 
    belongs_to :joke 
    belongs_to :user
end