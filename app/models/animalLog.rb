class AnimalLog < ActiveRecord::Base
    belongs_to :animal 
    belongs_to :zookeeper 

    delegate :formatted_time, to: :animal
    
    def log_time=(time)
        self.updated_at = AnimalLog.find_or_create_by(time: time)
    end

    def formatted_time
        self.created_at.strftime("%A, %m/%d/%y %l:%M %p")
    end

end
