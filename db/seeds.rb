puts "🌱 Seeding spices..."
puts "Deleting User/Species/Creature/Pet data..."
User.destroy_all
Creature.destroy_all
Pet.destroy_all
Species.destroy_all

puts "Creating users..."
user1 = User.create(username: "Jedi")
user2 = User.create(username: "Light")

puts "Creating creatures..."

c1 = Creature.create(creature_type: "Porg", film: "Star Wars: The Last Jedi", image_url: "https://static.wikia.nocookie.net/disney/images/a/aa/Porg.jpg/revision/latest/scale-to-width-down/1030?cb=20180103040758")
c2 = Creature.create(creature_type: "Jawas", film: "Star Wars: The Rise of Skywalker", image_url: "https://static.wikia.nocookie.net/disney/images/0/02/Jawa.jpg/revision/latest/scale-to-width-down/1032?cb=20191024002057")
c3 = Creature.create(creature_type: "Ewoks", film: "Star Wars: The Rise of Skywalker", image_url: "https://static.wikia.nocookie.net/disney/images/c/c2/Ewok.jpg/revision/latest/scale-to-width-down/1032?cb=20191024001658")
c4 = Creature.create(creature_type: "Hutt", film: "Star Wars: Return of the Jedi", image_url: "https://static.wikia.nocookie.net/disney/images/4/44/Jabba.png/revision/latest/scale-to-width-down/1031?cb=20130430195617")
c5 = Creature.create(creature_type: "Bantha", film: "Star Wars: The Phantom Menace", image_url:"https://static.wikia.nocookie.net/disney/images/a/a2/Bantha-ST.jpg/revision/latest?cb=20130604032107")

puts "Creating pets..."
Pet.create(user_id: user1.id, creature_id: c1.id)
Pet.create(user_id: user1.id, creature_id: c2.id)
Pet.create(user_id: user2.id, creature_id: c5.id)


puts "Creating species..."
Species.create(species_name: "JaJa", description: "It's stronger than a lion", user_id: user1.id)


puts "✅ Done seeding!"
