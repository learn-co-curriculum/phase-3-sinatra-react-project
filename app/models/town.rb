class Town < ActiveRecord::Base
    has_many :playgrounds

    validates :name, presence: true, uniqueness: true
 end
 