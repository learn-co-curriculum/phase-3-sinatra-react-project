puts "Deleting seeds..."
User.destroy_all
Entry.destroy_all
Favorite.destroy_all

puts "Seeding Users..."
User.create(username: "Anna")
User.create(username: "Brooke")
User.create(username: "Justin")
User.create(username: "Chris")

puts "Seeding Entries..."
30.times do
    Entry.create(name: Faker::Beer.brand + " Brewery", image_url: Faker::LoremFlickr.image, location: Faker::Address.street_address, description: Faker::Quote.famous_last_words, user_id: User.all.sample.id)
end

puts "Seeding Favorites..."
10.times do
    Favorite.create(user_id: User.all.sample.id, entry_id: Entry.all.sample.id)
end

puts "✅ Done seeding!"
