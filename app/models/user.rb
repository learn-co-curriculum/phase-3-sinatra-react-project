class User < ActiveRecord::Base 
    has_many :dogs
    
    def create_dog(name, age, breed,size,description, image)
        default_user_id = User.first&.id
        Dog.create(name: name, age: age, breed: breed, size: size, description: description, walk_time: true, image: image, user_id: default_user_id)
    end

   

    
end