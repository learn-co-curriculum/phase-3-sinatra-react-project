puts "Let's seed!"

puts "Destroying all old data..."
User.destroy_all
Pet.destroy_all
Agency.destroy_all
Match.destroy_all

city_array = ["Balmora", "Vivec", "Whiterun", "Morthal"]
pet_array = ["Cats", "Dogs", "Hamsters", "Ferrets", "Any furry friend!"]
cat_pics_array = [
"https://cataas.com/cat/595f2810557291a9750ebfd1", 
"https://cataas.com/cat/5ed5a34bfc6b05001805d6c1", 
"https://cataas.com/cat/5e54bb8fe9fac10011cb23cc", 
"https://cataas.com/cat/5f39a7075bc3fa00104444c3", 
"https://cataas.com/cat/5e343cb14348da001c78fb8f", 
"https://cataas.com/cat/618cead8536db3001894b4ea", 
"https://cataas.com/cat/5fa0e645d756950018646212",  
"https://cataas.com/cat/5fa164b0d75695001864621c",
"https://cataas.com/cat/595f280a557291a9750ebf4a",
"https://cataas.com/cat/59f84aa6ab5a050028b0009e",
"https://cataas.com/cat/60da12c802e5cf001caa36cf",
"https://cataas.com/cat/595f2811557291a9750ebfe4",
"https://cataas.com/cat/5a2124d12d0232008a63ef93",
"https://cataas.com/cat/60b73094e04e18001194a309",
"https://cataas.com/cat/5a2119ec2d0232008a63ef8e",
"https://cataas.com/cat/61009bfbcaacc400184f6b32",
"https://cataas.com/cat/595f280b557291a9750ebf6a",
"https://cataas.com/cat/5e9972961b7a400011744245",
"https://cataas.com/cat/5cd7c646ad0f8100129e994e",
"https://cataas.com/cat/6028590ffdeef60017d4a930",
"https://cataas.com/cat/595f280f557291a9750ebfba",
"https://cataas.com/cat/5fcc2085cb0c5c0010234649",
"https://cataas.com/cat/5fa09fe3d756950018646204",
"https://cataas.com/cat/5d39a4af14ca600011538e92",
"https://cataas.com/cat/5ac23f3861d533000f42c531",
"https://cataas.com/cat/61009bfbcaacc400184f6b20",
]


number_of_users = 20
puts "Creating #{number_of_users} users..."
number_of_users.times do
    User.create(
      name: Faker::Games::ElderScrolls.unique.name,
      age: rand(20..69),
      city: city_array.sample,
      bio: Faker::Quote.unique.famous_last_words,
      interested_in: pet_array.sample,
      photo: Faker::Avatar.unique.image
    )
  end

# resets id numbers when replanting
i = 0
while i < (number_of_users)
  User.all[i].update(id: i + 1)
  i += 1
end


number_of_pets = 20
puts "Creating #{number_of_pets} pets..."
# while loop was used to ensure each picture is unique 
i = 0
while i < number_of_pets
  Pet.create(
    name: Faker::Creature::Cat.unique.name, 
    age: rand(1..11),
    bio: Faker::Fantasy::Tolkien.unique.poem,
    photo: cat_pics_array[i],
    adopted: false,
    agency_id: rand(1..4),
  )  
  i += 1
end

i = 0
while i < (number_of_pets)
  Pet.all[i].update(id: i + 1)
  i += 1
end

## Original seeding loop
# 20.times do
#     Pet.create(
#       name: Faker::Creature::Cat.unique.name, 
#       age: rand(1..11),
#       bio: Faker::Fantasy::Tolkien.poem,
#       photo: Faker::Avatar.unique.image,
#       adopted: false,
#       agency_id: rand(1..4),
#     )
#   end

puts "Creating agencies..."
agency1 = Agency.create(id: 1, name: "Doghaven", city: "Balmora")
agency2 = Agency.create(id: 2, name: "Cat's Cradle", city: "Vivec")
agency3 = Agency.create(id: 3, name: "Hamsterville", city: "Whiterun")
agency4 = Agency.create(id: 4, name: "Ferretsburg", city: "Morthal")

puts "Adding sample match..."
Match.create(id: 1, user_id: 1, pet_id: 1)

puts "✅ Done seeding!"
