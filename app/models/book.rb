class Book < ActiveRecord::Base
  belongs_to :author
  has_many :readers_books
  has_many :readers, through: :readers_books
end