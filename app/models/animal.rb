class Animal < ActiveRecord::Base
    has_many :animal_logs, dependent: :destroy
    has_many :zookeepers, through: :animal_logs

end
