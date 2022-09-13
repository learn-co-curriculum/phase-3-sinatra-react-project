require 'pry'
class CategoriesController < ApplicationController

    # #READ 

    get '/categories/:id' do
        category = Category.find_by(id: params[:id])
        category.to_json(include: :remembers)

    end

    # just use include for individ ids 
    # I don't feel like I need this category at all
    get '/categories' do
        # categories = Category.all
        # categories.to_json
    end 
    

    #POST 

    post '/categories' do
        binding.pry
        category = Category.create(
          name: params[:name],
        )
        category.to_json
    end
    ##reading null 

    #UPDATE


    #DELETE
    delete '/categories/:id' do
        category = Category.find_by(id: params[:id])
        # delete the review
        category.destroy
        # send a response with the deleted review as JSON
        category.to_json
    end 



end 