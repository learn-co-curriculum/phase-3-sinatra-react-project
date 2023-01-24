class PurchaseController < ApplicationController

    get "/purchases" do
        Purchase.all.to_json
      end
    
      get "/purchases/:id" do
        purchase = find_purchase
        purchase.to_json
      end
    
      
      post "/purchases" do
        pur = Purchase.create(name: params["name"])
        binding.pry
        if pur.id
          pur.to_json
        else
          pur.errors.full_messages.to_sentence.to_json
        end
      end
    
      
      get "/purchases/:id" do
        purchase = find_purchase
      end
    
      patch "/purchases/:id" do
        purchase = find_purchase
      end
    
    
      delete "/purchases/:id" do
        purchase = find_purchase
      end
    
      private
    
      def find_purchase
        Purchase.find_by(id: params["id"])
      end
    
    end