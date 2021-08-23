class Animal < ActiveRecord::Base
    has_many :animal_logs
    has_many :zookeepers, through: :animal_logs

end