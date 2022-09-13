require 'pry'
class CategoriesController < ApplicationController

    # #READ 
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
        category.to_json
    end
    ##would I need an empty array here? 

    #UPDATE

    patch '/categories/:id' do
        category = Category.find_by(id: params[:id])
        category.update(
          name: params[:name],
        )
        category.to_json
    end
    ##this is updating the category in question, but deleting all the entries

    #DELETE
    delete '/categories/:id' do
        category = Category.find_by(id: params[:id])
        category.destroy
        category.to_json
    end 



end 