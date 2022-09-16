require 'pry'
class CategoriesController < ApplicationController

    # #READ 

    get '/categories/all' do
        categories = Category.all
        categories.to_json
    end

    
    get '/categories/:id' do
        category = Category.find_by(id: params[:id])
        category.to_json(include: :remembers)

    end



    #POST 
    post '/categories' do
        # binding.pry
        category = Category.create(
          name: params[:name],
        )
        status 201
        category.to_json
    end

end 