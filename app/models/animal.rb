class Animal < ActiveRecord::Base
    has_many :animal_logs, dependent: :destroy
    has_many :zookeepers, through: :animal_logs

    def age
        DateTime.now.year - self.birthdate.slice(-4,4).to_i
    end
end
