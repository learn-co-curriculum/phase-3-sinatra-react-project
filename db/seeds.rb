puts "Removing old data..."
Animal.destroy_all
Animal.reset_pk_sequence
Habitat.destroy_all
Habitat.reset_pk_sequence
Sighting.destroy_all
Sighting.reset_pk_sequence

puts "🌱 Seeding spices..."

# Seed your database here
10.times do
Animal.create(
    name: Faker::Creature::Animal.name,
    sighted: true,
    image: Faker::LoremFlickr.image,
    extinct: false,
    scientific_name: Faker::Creature::Bird.order
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
