class Store < ActiveRecord::Base
    has_many :products

    def new_store(name)
        Store.create(name: name)
    end

end