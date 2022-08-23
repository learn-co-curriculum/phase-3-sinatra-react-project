puts "🌱 Seeding spices..."

puts "Deleting old data..."
Animal.destroy_all
Like.destroy_all
Comment.destroy_all
User.destroy_all
Donation.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name, location: "San Francisco, CA", username: "user1", password: "12345")
user2 = User.create(name: Faker::Name.name, location: "New Orleans, LA", username: "user2", password: "12345")
user3 = User.create(name: Faker::Name.name, location: "Seattle, WA", username: "user3", password: "12345")

puts "Creating animals..."
animal1 = Animal.create(
    name: "Mr. Rumpus", 
    species: "Wombat",
    description: "A short-legged, muscular quadrupedal marsupials that are native to Australia.",
    adopted?: true,
    user_id: user1.id
)
animal2 = Animal.create(
    name: "Cherry", 
    species: "Red Panda",
    description: "AKA the lesser panda, is a small mammal native to the eastern Himalayas and southwestern China.",
    adopted?: false
)
animal3 = Animal.create(
    name: "Sher Khan", 
    species: "Bengal Tiger",
    description: "A population of the Panthera tigris tigris subspecies. It ranks among the biggest wild cats alive today. It is considered to belong to the world's charismatic megafauna.",
    adopted?: true,
    user_id: user1.id
)
animal4 = Animal.create(
    name: "Prince Capupu", 
    species: "Tasmanian Devil",
    description: "A carnivorous marsupial of the family Dasyuridae. Until recently, it was only found on the island state of Tasmania, but it has been reintroduced to New South Wales in mainland Australia, with a small breeding population.",
    adopted?: false
)
animal5 = Animal.create(
    name: "Snow", 
    species: "Polar Bear",
    description: "A hypercarnivorous bear whose native range lies largely within the Arctic Circle, encompassing the Arctic Ocean, its surrounding seas and surrounding land masses. It is the largest extant bear species, as well as the largest extant land carnivore.",
    adopted?: true,
    user_id: user3.id
)

puts "Creating donations..."
Donation.create(
    amount: 10,
    animal_id: animal5.id,
    user_id: user2.id
)

Donation.create(
    amount: 5,
    animal_id: animal2.id,
    user_id: user3.id
)

Donation.create(
    amount: 20,
    animal_id: animal1.id,
    user_id: user2.id
)

puts "Creating likes..."
Like.create(
    animal_id: animal1.id,
    user_id: user2.id
)

Like.create(
    animal_id: animal3.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal2.id,
    user_id: user1.id
)

Like.create(
    animal_id: animal3.id,
    user_id: user3.id
)

puts "Creating comments..."
Comment.create(
    message: "Cute wombat!",
    animal_id: animal1.id,
    user_id: user3.id
)

Comment.create(
    message: "I'm going to adopt you next!",
    animal_id: animal5.id,
    user_id: user2.id
)

Comment.create(
    message: "I wonder what he eats.",
    animal_id: animal3.id,
    user_id: user1.id
)

Comment.create(
    message: "Why are you not named Taz?",
    animal_id: animal4.id,
    user_id: user3.id
)

Comment.create(
    message: "He is a royalty!",
    animal_id: animal4.id,
    user_id: user1.id
)

puts "✅ Done seeding!"