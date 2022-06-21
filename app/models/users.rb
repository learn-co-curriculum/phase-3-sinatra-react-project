class User < ActiveRecord::Base
    belongs_to :emoji
    belongs_to :drink
end