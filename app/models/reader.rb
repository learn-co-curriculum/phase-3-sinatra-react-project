class Reader < ActiveRecord::Base
  has_many :readers_books
  has_many :books, through: :readers_books
end