puts "🌱 Seeding spices..."

# Seed your database here
10.times do
Animal.create(
    name: Faker::Creature::Animal.name,
    sighted: true,
    image: Faker::LoremFlickr.image,
    extinct: false,
    scientific_name: Faker::Creature::Animal.name
)
end

10.times do
    Habitat.create(
        name: Faker::Mountain.name,
    )
    end

10.times do
    Sighting.create(
        animal_id: Animal.all.sample.id,
        habitat_id: Habitat.all.sample.id,
        seen: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    )
    end
puts "✅ Done seeding!"
