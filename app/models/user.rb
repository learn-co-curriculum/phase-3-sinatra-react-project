class User < ActiveRecord::Base
    has_many :user_decision_joins
    has_many :decisions, through: :user_decision_joins
end
