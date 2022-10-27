puts "Deleting seeds..."
User.destroy_all
Entry.destroy_all
Favorite.destroy_all

sampleImgURLs = ["https://images.unsplash.com/photo-1565539383096-875303015bd2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2676&q=80", "https://images.unsplash.com/photo-1632173517757-1e87c79de596?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1600788886242-5c96aabe3757?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1598614522213-6b7bd8726a3c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80", "https://images.unsplash.com/photo-1523567830207-96731740fa71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"]

sampleTypes = ["IPA", "Pale Ale", "Hazy IPA", "Pilsner", "Hefeweizen", "Saison", "Porter", "Stout", "Barrel Aged Stout", "Wheat", "Sour"]

puts "Seeding Users..."
User.create(username: "Anna")
User.create(username: "Brooke")
User.create(username: "Justin")
User.create(username: "Chris")

puts "Seeding Entries..."
30.times do
    Entry.create(name: Faker::Beer.brand + " " + sampleTypes.sample, image_url: sampleImgURLs.sample, location: Faker::Beer.brand + ' Brewery', description: Faker::Quote.famous_last_words, user_id: User.all.sample.id)
end

puts "Seeding Favorites..."
10.times do
    Favorite.create(user_id: User.all.sample.id, entry_id: Entry.all.sample.id)
end

puts "✅ Done seeding!"
