class Comment < ActiveRecord::Base
    belongs_to :post
    belongs_to :user

    # create random methods to show back end work 
end