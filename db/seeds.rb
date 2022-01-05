puts "🌱 Seeding spices..."

city_array = ["Balmora", "Vivec", "Whiterun", "Morthal"]
pet_array = ["Cats", "Dogs", "Hamsters", "Ferrets", "Any furry friend!"]

# Need to figure out how to fetch each picture, otherwise may need to make an array of cat URLs
# cat_pics_array = ["https://cataas.com/cat/595f2810557291a9750ebfd1", "https://cataas.com/cat/5ed5a34bfc6b05001805d6c1"]

puts "Creating users..."
20.times do
    User.create(
      name: Faker::Games::ElderScrolls.name,
      age: rand(20..69),
      city: city_array.sample,
      bio: Faker::Games::Fallout.quote,
      interested_in: pet_array.sample,
      photo: Faker::Avatar.unique.image
    )
  end

puts "Creating pets..."
20.times do
    Pet.create(
      name: Faker::Creature::Cat.unique.name, 
      age: rand(1..11),
      bio: Faker::Fantasy::Tolkien.poem,
      photo: Faker::Avatar.unique.image,
      adopted: false,
      agency_id: rand(1..4),
    )
  end

puts "Creating agencies..."
agency1 = Agency.create(name: "Doghaven", city: "Balmora")
agency2 = Agency.create(name: "Cat's Cradle", city: "Vivec")
agency3 = Agency.create(name: "Hamsterville", city: "Whiterun")
agency4 = Agency.create(name: "Ferretsburg", city: "Morthal")

puts "✅ Done seeding!"
