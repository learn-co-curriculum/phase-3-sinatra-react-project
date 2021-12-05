class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :date
end