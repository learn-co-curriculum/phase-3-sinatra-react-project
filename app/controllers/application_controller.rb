class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/read_expense/:id" do
    expense = Expense.find(params[:id])
    expense.to_json
  end

  get "/display_all_expenses" do
    expense = Expense.all
    expense.to_json
  end

  post "/add_expense" do
    # binding.pry
    expense = Expense.create(
      description: params[:description],
      monthly: params[:monthly],
      annual: params[:annual],
      frequency: params[:frequency],
      due_date: params[:due_date],
      notes: params[:notes]
    )
    expense.to_json
  end

  patch "/update_expense/:id" do
    binding.pry
    expense = Expense.find(params[:id]).update(
      description: params[:description],
      monthly: params[:monthly],
      annual: params[:annual],
      frequency: params[:frequency],
      due_date: params[:due_date],
      notes: params[:notes]
    )
    expense.to_json
  end

  delete "/delete_expense/:id" do
    binding.pry
    expense = Expense.find(params[:id])
    expense.destroy
  end

  get "/read_income/:id" do
    income = Income.find(params[:id])
    income.to_json
  end

  get "/read_all_income" do
    income = Income.find.all
    income.to_json
  end

  post "/add_income" do
    # binding.pry
    income = Income.create(
      description: params[:description],
      amount: params[:amount]
    )
    income.to_json
  end

  patch "/update_income/:id" do
    income = Income.find(params[:id]).update(
      description: params[:description],
      amount: params[:amount]
    )
    income.to_json
  end

  delete '/delete_income/:id' do
    income = Income.find(params[:id])
    income.destroy
  end

end
