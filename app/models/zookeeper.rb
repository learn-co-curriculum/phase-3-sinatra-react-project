class Zookeeper < ActiveRecord::Base
    has_many :animal_logs
    has_many :animals, through: :animal_logs

   
end

