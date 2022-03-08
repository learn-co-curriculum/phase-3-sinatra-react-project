class Squad < ActiveRecord::Base
has_many :users
has_many :skills, through :users
has_many :games, through :users


end