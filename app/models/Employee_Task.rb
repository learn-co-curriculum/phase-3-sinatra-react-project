class EmployeeTask < ActiveRecord::Base
    belongs_to :team
    belongs_to :employee
    belongs_to :task

    def self.employees(task_id)
        array = []
        where("task_id=?", task_id).each do |e|
            array << Employee.find(e.employee_id)
        end
        array
    end

    def self.employees_ids(task_id)
        array = []
        employees(task_id).each do |e|
            array << e.id
        end
        array
    end
end