class CategoriesController < ApplicationController
    get '/categories' do
        categories = Category.all.order
        categories.to_json
    end 

    get '/categories/:id' do
        categories = Category.find(params[:id])
        categories.to_json
    end

end 



#read
