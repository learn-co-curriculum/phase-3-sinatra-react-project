class Category < ActiveRecord::Base
    # category has many to many relationships with items
has_many :items
end