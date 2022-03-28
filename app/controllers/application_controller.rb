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
    binding.pry
    information.to_json
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
end