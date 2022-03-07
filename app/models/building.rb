class Building < ActiveRecord::Base
    belongs_to :architect
    belongs_to :city

end