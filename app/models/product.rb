class Product < ActiveRecord::Base
    belongs_to :store

    def new_product(name, price, inventory, category)
        Product.create(
            name: name,
            price: price,
            inventory: inventory,
            category: category,
            store_id: self.id
        )
    end
    
end