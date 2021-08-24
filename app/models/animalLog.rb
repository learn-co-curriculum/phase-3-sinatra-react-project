class AnimalLog < ActiveRecord::Base
    belongs_to :animal 
    belongs_to :zookeeper 
    
    def log_time=(time)
        self.updated_at = AnimalLog.find_or_create_by(time: time)
    end

end
