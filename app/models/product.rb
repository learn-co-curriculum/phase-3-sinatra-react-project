class Product < ActiveRecord::Base
    belongs_to :store

    def new_product
        Product.create (name, price, inventory, category) ( 
            name: name,
            price: price,
            inventory: inventory,
            category: category,
            store_id: 1
        ) 

    end
end