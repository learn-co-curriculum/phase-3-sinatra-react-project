class Member < ActiveRecord::Base
  belongs_to :household

  validates :first_name, presence: true
  validates :last_name, presence: true

end