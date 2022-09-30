class Decision <ActiveRecord::BASE
    has_many :user_decision_joins
    has_many :users, through: :user_decision_joins
    has_many :options


end