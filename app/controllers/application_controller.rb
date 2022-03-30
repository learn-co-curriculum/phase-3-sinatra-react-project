class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/companies" do
    companies = Company.all
    companies.to_json
  end

  get "/dashboard/:id" do
    employee = Employee.find(params[:id])
    company = {
      company_info: employee.company,
      teams: employee.company.teams
    }
    information = {
      employee: employee,
      company: company
    }
    information.to_json
  end

  get "/tasks/:employeeID" do
    employee = Employee.find(params[:employeeID])

    if employee.team
      res_hash = {
        personal_tasks: [],
        team_tasks: employee.team.tasks,
        team: employee.team,
        members: employee.team.employees,
        company: employee.company
      }

      if EmployeeTask.where("employee_id=?", employee.id).length > 0
        EmployeeTask.where("employee_id=?", employee.id).each do |t|
          res_hash[:personal_tasks] << Task.find(t.task_id)
        end
      end

      res_hash.to_json
    else
      res_hash = {
        company: employee.company.name,
        company_teams: employee.company.teams,
        team: nil
      }

      res_hash.to_json
    end
  end

  get "/tasks/edit/:id" do
    res_hash = {
      task: Task.find(params[:id]),
      members: EmployeeTask.employees(params[:id]),
      team_members: Task.find(params[:id]).team.employees.where.not(id: EmployeeTask.employees_ids(params[:id]))
    }
    res_hash.to_json
  end

  post "/" do
    employee = Employee.find_or_initialize_by(
      email: params[:email]
    )

    if employee.new_record?
      employee.update(
        first_name: params[:name],
        last_name: nil,
        email_verified: params[:email_verified],
        picture: params[:picture],
        company_id: nil,
        team_id: nil
      )
    end

    employee.to_json
  end

  post "/submit_employee" do
    employee = Employee.find_by(email: params[:employee_data][:email])
    employee.update(
      first_name: params[:form_data][:firstName], 
      last_name: params[:form_data][:lastName],
      company_id: params[:form_data][:companyId].to_i
    )
    employee.to_json
  end

  post "/tasks/edit" do
    new_task = EmployeeTask.create(team_id: params[:teamID], employee_id: params[:employeeID], task_id: params[:taskID])
    new_task.to_json
  end

  patch "/tasks/edit/:taskID" do
    task = Task.find(params[:taskID])
    task.update(description: params[:description], deadline: params[:deadline])
    task.to_json
  end

  patch "/team/:employeeID" do
    employee = Employee.find(params[:employeeID])
    employee.update(team_id: params[:teamID])
    employee.to_json
  end

  delete "/tasks/edit/:taskID/:employeeID" do
    employee = EmployeeTask.where("task_id = ? and employee_id = ?", params[:taskID], params[:employeeID])
    employee[0].destroy
    employee[0].to_json
  end
end