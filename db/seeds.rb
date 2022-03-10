puts "Deleting old data..."
User.destroy_all
Dog.destroy_all


puts "Creating users..."
u1 = User.create(name: "Mike")
u2 = User.create(name: "Harris")
u3 = User.create(name: "Steve")
u4 = User.create(name: "Olga")
u5 = User.create(name: "Dan")
u6 = User.create(name: "Shannon")
u7 = User.create(name: "Kali")

puts "creating dogs..."
d1 = Dog.create(name: "Magic", age: 15, breed: "Beagle", size: "medium", description: "A gentleman food theif", walk_time: true, image: "./images/Magic.jpg", user_id: u1.id)
d2 = Dog.create(name: "Layla", age: 12, breed: "Golden Lab", size: "large", description: "A sweet, personanble, and classy lady", walk_time: true, image: "./images/Layla.jpg", user_id: u6.id)
d3 = Dog.create(name: "Maise", age: 3, breed: "Lab mix", size: "large", description: "Long distance jumping champ", walk_time: true, image: "./images/Maisie.jpg", user_id: u6.id)
d4 = Dog.create(name: "Mackrel", age: 1, breed: "Hound mix", size: "medium", description: "Silly snugglebug", walk_time: true, image: "./images/Mackrel.jpg", user_id: u6.id)
d5 = Dog.create(name: "Lucy", age: 6, breed: "Teacup Poodle", size: "small", description: "Fast like a rocket!", walk_time: true, image: "./images/Lucy.jpg", user_id: u2.id)
d6 = Dog.create(name: "Seth", age: 2, breed: "Golden Corgi", size: "small", description: "A haughty and fluffy prince", walk_time: true, image: "./images/Seth.jpg", user_id: u7.id)
d7 = Dog.create(name: "Walle", age: 7, breed: "Black Lab", size: "large", description: "Still crazy like a puppy", walk_time: true, image: "./images/Walle.jpg", user_id: u4.id)
d8 = Dog.create(name: "Pancake", age: 1, breed: "Collie-Terrier Mix", size: "medium", description: "An excitable'Terrorier'", walk_time: true, image: "./images/Pancake.jpg", user_id: u3.id)
d9 = Dog.create(name: "Beatrice", age: 5, breed: "Golden Doodle", size: "medium", description: "Thinks she's a human baby", walk_time: true, image: "./images/Beatrice.jpg", user_id: u5.id)

puts "✅ Done seeding!"