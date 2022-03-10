class Dog < ActiveRecord::Base
    belongs_to :user
   
    def here_dog
        puts "Hi my name is #{self.name} and my best friend is #{user.name}"
    end

    def bye_dog
    self.Dog.destroy
    end

end