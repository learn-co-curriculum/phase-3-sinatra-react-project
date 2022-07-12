file = File.read('./db/db.json')
db = JSON.parse(file)

# puts characters
puts "🌱 Seeding spices..."

db[:characters].each do |character|
  puts character
  Character.create(name: character.name, gender: character.gender, description: character.desc, image: character.character_image, anime_name: character.anime_name, anime_image: character.anime_image)
end

puts "✅ Done seeding!"

