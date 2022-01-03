puts "🌱 Seeding spices..."

Household.destroy_all
User.destroy_all
Pet.destroy_all
Task.destroy_all

10.times do
    Household.create({
        household_name: Faker::Dessert.variety
        })
end

20.times do
    
    User.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        household_id: Faker::Number.between(from: 1, to: 10)
        })
end

100.times do
    Pet.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: Faker::Number.between(from: 1, to: 50),
        species: Faker::Creature::Animal.name,
        household_id: Faker::Number.between(from: 1, to: 10)
        })
end

100.times do
    Task.create({
        household_id: Faker::Number.between(from: 1, to: 10),
        user_id: Faker::Number.between(from: 1, to: 20),
        pet_id: Faker::Number.between(from: 1, to: 100),
        task_name: Faker::Lorem.sentence(word_count: 3),
        task_due_date: Faker::Date.in_date_period,
        task_end_date: Faker::Date.in_date_period,
        task_location: Faker::WorldCup.city
        })
end

puts "✅ Done seeding!"
