puts "Deleting old data..."
User.destroy_all
Dog.destroy_all


puts "Creating users..."
u1 = User.create(name: "Mike", contact: "mike@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday", image: "image.url")
u2 = User.create(name: "Harris", contact: "harris@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday", image: "image.url")
u3 = User.create(name: "Steve", contact: "steve@gmail.com", days_wanted: "Monday, Wednesday, Friday", image: "image.url")
u4 = User.create(name: "Olga", contact: "olga@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday", image: "image.url")
u5 = User.create(name: "Dan", contact: "dan@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday", image: "image.url")
u6 = User.create(name: "Shannon", contact: "shannon@gmail.com", days_wanted: "Tuesday, Thursday", image: "image.url")
u7 = User.create(name: "Kali", contact: "kali@gmail.com", days_wanted: "Wednesday", image: "image.url")

puts "creating dogs..."
d1 = Dog.create(name: "Magic", age: 7, breed: "Beagle", size: "medium", description: "placeholder", walk_time: 45, image: "image.url", user_id: u1.id)
d2 = Dog.create(name: "Layla", age: 12, breed: "Golden Lab", size: "large", description: "placeholder", walk_time: 30, image: "image.url", user_id: u6.id)
d3 = Dog.create(name: "Maise", age: 3, breed: "Lab mix", size: "large", description: "placeholder", walk_time: 90, image: "image.url", user_id: u6.id)
d4 = Dog.create(name: "Mackrel", age: 1, breed: "Hound mix", size: "medium", description: "placeholder", walk_time: 60, image: "image.url", user_id: u6.id)
d5 = Dog.create(name: "Lucy", age: 6, breed: "Teacup Poodle", size: "small", description: "placeholder", walk_time: 45, image: "image.url", user_id: u2.id)
d6 = Dog.create(name: "Seth", age: 2, breed: "Golden Corgi", size: "small", description: "placeholder", walk_time: 45, image: "image.url", user_id: u7.id)
d7 = Dog.create(name: "Walle", age: 7, breed: "Black Lab", size: "large", description: "placeholder", walk_time: 60, image: "image.url", user_id: u4.id)
d8 = Dog.create(name: "Pancake", age: 1, breed: "Collie Mix", size: "medium", description: "placeholder", walk_time: 30, image: "image.url", user_id: u3.id)
d9 = Dog.create(name: "Beatrice", age: 5, breed: "Golden Doodle", size: "medium", description: "placeholder", walk_time: 45, image: "image.url", user_id: u5.id)

puts "✅ Done seeding!"