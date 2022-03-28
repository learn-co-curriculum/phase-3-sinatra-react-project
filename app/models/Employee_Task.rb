class EmployeeTask < ActiveRecord::Base
    belongs_to :team
    belongs_to :employee
    belongs_to :task
end