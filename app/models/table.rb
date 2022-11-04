class Table < ActiveRecord::Base
  has_many :guests, dependent: :destroy
  validates :table_number, presence: true
  validates :table_number, uniqueness: true
end