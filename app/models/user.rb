class User < ActiveRecord::Base
    has_many :decks
end