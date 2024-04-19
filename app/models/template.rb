class Template < ActiveRecord::Base
    has_many :characters
    has_many :users, through: :characters
    
end