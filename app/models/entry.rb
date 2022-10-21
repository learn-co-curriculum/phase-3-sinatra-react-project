class Entry < ActiveRecord::Base
    has_many :favorites
    belongs_to :user
    # has_many :users, through: :favorites
    
end
