class StoreController < ApplicationController
    set :default_content_type, 'application/json'
    
    post "/stores" do
        store = Store.new_store
        store.to_json
      end


    get "/stores" do
      store = Store.all
      store.to_json
    end


    get "/stores/:id" do
      store = Store.find(params[:id])
      store.to_json
    end
  
    
  end
  