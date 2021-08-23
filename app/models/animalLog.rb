class AnimalLog < ActiveRecord::Base
    belongs_to :animal 
    belongs_to :zookeeper 

end