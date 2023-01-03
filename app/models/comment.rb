class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :post

    # create random methods to show back end work 
end