class UserDecisionJoin < ActiveRecord::Base
 belongs_to :user
 belongs_to :decision
end