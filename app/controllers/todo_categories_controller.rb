class TodoCategoriesController < ApplicationController

    # GET: /todo_categories
    get '/todo_categories' do
      TodoCategory.all.to_json
    end
  
    # POST: /todo_categories
    post '/todo_categories' do
      TodoCategory.create(name: params[:name]).to_json
    end
  
    # GET: /todo_categories/5
    get '/todo_categories/:id' do
      if TodoCategory.find_by_id(params[:id])
        TodoCategory.find_by_id(params[:id]).to_json
      else
        {error: "Record not found with id #{params['id']}"}.to_json
      end
    end
  
    # PATCH: /todo_categories/5
    patch '/todo_categories/:id' do
      todo_category = TodoCategory.find_by_id(params[:id])
      todo_category.update(name: params[:name])
      todo_category.to_json
    end
  
    # DELETE: /todo_categories/5/delete
    delete '/todo_categories/:id' do
      todo_category = TodoCategory.find_by_id(params[:id])
      if todo_category
        todo_category.destroy
        todo_category.to_json
      else
        {error: "Record not found with id #{params['id']}"}.to_json
      end
    end
  end