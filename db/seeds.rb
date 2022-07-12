require "faker"

file = File.read('./db/db.json')
db = JSON.parse(file)

# puts "Cleaning up..."

puts "🌱 Seeding spices..."

db['characters'].each do |character|
  puts character
  Character1.create(name: character['name'], gender: character['gender'], description: character['desc'], imageURL: character['character_image'], anime_name: character['anime_name'], anime_imageURL: character['anime_image'])
end

puts "Character1s done!"

db['characters'].each do |character|
  puts character
  Character2.create(name: character['name'], gender: character['gender'], description: character['desc'], imageURL: character['character_image'], anime_name: character['anime_name'], anime_imageURL: character['anime_image'])
end

puts "Character2s done!"

80.times do
  Ship.create(name: Faker::Dessert.variety, character1_id: Character1.all.sample.id, character2_id: Character2.all.sample.id)
end

puts "Ships done!"

50.times do
  Comment.create(name: Faker::Name.first_name, comment: Faker::TvShows::Community.quotes , ship_id: Ship.all.sample.id)
end

puts "Comments done!"

puts "✅ Done seeding!"

