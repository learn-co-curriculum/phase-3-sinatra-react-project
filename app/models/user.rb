class User < ActiveRecord::Base
    has_many :favorites
    has_many :entries
    has_many :favorited_entries, :through => :favorites, :source => :entry
end
