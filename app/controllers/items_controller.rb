class ItemController < ApplicationController
  
    get '/items' do
      items =  Item.all
      items.to_json
    end

end