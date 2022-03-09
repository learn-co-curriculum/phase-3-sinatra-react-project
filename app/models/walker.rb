class Walker < ActiveRecord::Base
    has_many :dogs, through: :clients
end
