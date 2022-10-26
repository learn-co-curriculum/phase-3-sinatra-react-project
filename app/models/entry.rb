class Entry < ActiveRecord::Base
    has_many :favorites
    belongs_to :user
    
end
