class Category < ActiveRecord::Base
    # category has many to many relationships with items
has_many :items
 validates :name, presence: true, uniqueness: true
 
end