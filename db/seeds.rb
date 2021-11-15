puts "🌱 Seeding spices..."
puts "Deleteing previous data..."
Animal.destroy_all
Shelter.destroy_all
AdoptionApplication.destroy_all

puts "🐩 Creating animals..."
20.times do
    Animal.create(
        name: Faker::Creature::Dog.name, 
        type: "dog", 
        breed: Faker::Creature::Dog.breed, 
        img_url: Faker::LoremFlickr.image(size: "150x160", search_terms: ['dog', 'cute'], match_all: true),
        shelter_id: Shelter.all.sample.id
    )
end
20.times do 
    Animal.create(
        name: Faker::Creature::Cat.name, 
        type: "cat", 
        breed: Faker::Creature::Cat.breed, 
        img_url: Faker::LoremFlickr.image(size: "150x160", search_terms: ['cat', 'cute'], match_all: true),
        shelter_id: Shelter.all.sample.id
    )
end

puts "🏞️ Creating shelters..."
40.times do 
    Shelter.create(name: Faker::Educator.campus, address: Faker::Address.full_address)
end

puts "📝 Creating adoption applications..."
40.times do 
    AdoptionApplication.create(
        name: Faker::Name.name, 
        date: Faker::Date.in_date_period(month: 3), 
        animal_id: Animal.all.sample.id  
    )
end

puts "✅ Done seeding!"
