puts "Deleting old data..."
Client.destroy_all
Dog.destroy_all
Walker.destroy_all

puts "creating walkers..."
w1 = Walker.create(name: "Renata", contact: "renata@gmail", about: "placeholder", availability: "Monday, Tuesday, Wednesday, Thursday, Friday", review:"placeholder review", rating: 5, image: "image.url")
w2 = Walker.create(name: "Allison", contact: "allison@gmail", about: "placeholder", availability: "Monday, Tuesday, Wednesday, Thursday, Friday", review:"placeholder review", rating: 5, image: "image.url")
w3 = Walker.create(name: "Jonathan", contact: "jonathan@gmail", about: "placeholder", availability: "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday", review:"placeholder review", rating: 5, image: "image.url")
w4 = Walker.create(name: "Scarlett", contact: "scarlett@gmail", about: "placeholder", availability: "Monday, Tuesday, Wednesday, Thursday, Friday", review:"placeholder review", rating: 5, image: "image.url")
w5 = Walker.create(name: "Henry", contact: "henry@gmail", about: "placeholder", availability: "Tuesday, Wednesday, Thursday, Friday", review:"placeholder review", rating: 5, image: "image.url")

puts "Creating clients..."
c1 = Client.create(name: "Mike", contact: "mike@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday", image: "image.url", walker_id: w1.id)
c2 = Client.create(name: "Harris", contact: "harris@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday", image: "image.url", walker_id: w3.id)
c3 = Client.create(name: "Steve", contact: "steve@gmail.com", days_wanted: "Monday, Wednesday, Friday", image: "image.url", walker_id: w2.id)
c4 = Client.create(name: "Olga", contact: "olga@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday", image: "image.url", walker_id: w2.id)
c5 = Client.create(name: "Dan", contact: "dan@gmail.com", days_wanted: "Monday, Tuesday, Wednesday, Thursday, Friday", image: "image.url", walker_id: w4.id)
c6 = Client.create(name: "Shannon", contact: "shannon@gmail.com", days_wanted: "Tuesday, Thursday", image: "image.url", walker_id: w5.id)
c7 = Client.create(name: "Kali", contact: "kali@gmail.com", days_wanted: "Wednesday", image: "image.url", walker_id: w4.id)

puts "creating dogs..."
d1 = Dog.create(name: "Magic", age: 7, breed: "Beagle", size: "medium", description: "placeholder", walk_time: 45, image: "image.url", client_id: c1.id, walker_id: w1.id)
d2 = Dog.create(name: "Layla", age: 12, breed: "Golden Lab", size: "large", description: "placeholder", walk_time: 30, image: "image.url", client_id: c6.id, walker_id: w5.id)
d3 = Dog.create(name: "Maise", age: 3, breed: "Lab mix", size: "large", description: "placeholder", walk_time: 90, image: "image.url", client_id: c6.id, walker_id: w5.id)
d4 = Dog.create(name: "Mackrel", age: 1, breed: "Hound mix", size: "medium", description: "placeholder", walk_time: 60, image: "image.url", client_id: c6.id, walker_id: w5.id)
d5 = Dog.create(name: "Lucy", age: 6, breed: "Teacup Poodle", size: "small", description: "placeholder", walk_time: 45, image: "image.url", client_id: c2.id, walker_id: w3.id)
d6 = Dog.create(name: "Seth", age: 2, breed: "Golden Corgi", size: "small", description: "placeholder", walk_time: 45, image: "image.url", client_id: c7.id, walker_id: w4.id)
d7 = Dog.create(name: "Walle", age: 7, breed: "Black Lab", size: "large", description: "placeholder", walk_time: 60, image: "image.url", client_id: c4.id, walker_id: w2.id)
d8 = Dog.create(name: "Pancake", age: 1, breed: "Collie Mix", size: "medium", description: "placeholder", walk_time: 30, image: "image.url", client_id: c3.id, walker_id: w2.id)
d9 = Dog.create(name: "Beatrice", age: 5, breed: "Golden Doodle", size: "medium", description: "placeholder", walk_time: 45, image: "image.url", client_id: c5.id, walker_id: w4.id)

puts "✅ Done seeding!"