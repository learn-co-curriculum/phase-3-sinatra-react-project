class Decision < ActiveRecord::Base
    has_many :user_decision_joins
    has_many :users, through: :user_decision_joins
    has_many :options


end