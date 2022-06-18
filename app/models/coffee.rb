class Coffee < ActiveRecord::Base
has_many :shops 
has_many :customers, through: :shops

end