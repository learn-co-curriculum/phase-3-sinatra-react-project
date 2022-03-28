class Task < ActiveRecord::Base
    belongs_to :start_day, class_name: 'Day'
    belongs_to :end_day, class_name: 'Day'
    belongs_to :category
    belongs_to :priority
    belongs_to :repeated_task

end