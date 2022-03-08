class GroceryListsController < ApplicationController
    get '/grocery_lists' do 
        groceries = GroceryList.all
        groceries.to_json
    end

    patch '/grocery_lists/:id' do
        groceries = GroceryList.find(params[:id])
        groceries.update(
            title: params[:title],
            item_id: params[:item_id],
            category_id: params[:category_id]
        )
        items.to_json
    end


end 


#read, update