class Dog
    attr_accessor :name
    @@all = []
def initialize(x)
    @name = x
end

def self.create(x)
    d = Dog.new(x)
    @@all << d 
    d
end

def self.all
    @@all
end

def take_walk
    puts @name
    puts @@all
end
end