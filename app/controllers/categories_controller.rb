class CategoriesController < ApplicationController


    get '/categories' do
        categories = Category.all
        categories.to_json
    end


end 