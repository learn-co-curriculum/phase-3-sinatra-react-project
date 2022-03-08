class GroceryListsController < ApplicationController
    get '/grocery_lists' do 
        groceries = GroceryList.all
        groceries.to_json
    end
end 