puts "🌱 Seeding spices..."

puts "Creating Character1s..."
char1 = Character1.create(name: Faker::Name.name)
char2 = Character1.create(name: Faker::Name.name)
char3 = Character1.create(name: Faker::Name.name)

puts "Creating Character2s..."
charA = Character2.create(name: Faker::Name.name)
charB = Character2.create(name: Faker::Name.name)
charC = Character2.create(name: Faker::Name.name)

puts "Creating Ships..."
ship1 = Ship.create(Character1_id: 1, Character2_id: 1, comment:"it works...")
ship2 = Ship.create(Character1_id: 2, Character2_id: 2, comment:"the best!")
ship3 = Ship.create(Character1_id: 3, Character2_id: 3, comment:"terrible")

puts "✅ Done seeding!"
