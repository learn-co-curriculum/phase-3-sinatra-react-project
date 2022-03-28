puts "🌱 Seeding spices..."

# Seed your database here

puts "Deleting old seed data"
Shelter.destroy_all
Animal.destroy_all
Adopter.destroy_all

puts "Creating shelters"
shelter = Shelter.create(shelter_name: "Sprout and Spruce's Shelter", shelter_address: Faker::Address.full_address, shelter_phone: Faker::PhoneNumber.phone_number)

puts "Creating animals"
animal1 = Animal.create(animal_name: Faker::Name.name , breed: "cat", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal2 = Animal.create(animal_name: Faker::Name.name , breed: "dog", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal3 = Animal.create(animal_name: Faker::Name.name , breed: "dog", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal4 = Animal.create(animal_name: Faker::Name.name , breed: "cat", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal5 = Animal.create(animal_name: Faker::Name.name , breed: "snake", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal6 = Animal.create(animal_name: Faker::Name.name , breed: "dog", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal7 = Animal.create(animal_name: Faker::Name.name , breed: "parrot", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal8 = Animal.create(animal_name: Faker::Name.name , breed: "rabbit", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal9 = Animal.create(animal_name: Faker::Name.name , breed: "hamster", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))
animal10 = Animal.create(animal_name: Faker::Name.name , breed: "fish", age: rand(1..15), shelter_id: shelter.id, adopter_id: rand(1..5))


puts "Createing adopters"
adopter1 = Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)
adopter2 = Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)
adopter3 = Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)
adopter4 = Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)
adopter5 = Adopter.create(adopter_name: Faker::Name.name, email: Faker::Internet.email, adopter_phone: Faker::PhoneNumber.phone_number)

puts "✅ Done seeding!"
