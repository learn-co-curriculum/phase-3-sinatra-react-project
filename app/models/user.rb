class User < ActiveRecord::Base 
    has_many :dogs
    
    def create_dog
        Dog.create(name: name, age: age, breed: breed, size: size, description: description, walk_time: walk_time, image: image, client_id: self.id)
    end

   

    
end