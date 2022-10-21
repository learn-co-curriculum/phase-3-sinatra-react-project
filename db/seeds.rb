

puts "🌱 Seeding spices..."

# Seed your database here
# User data
50.times do
    User.create(username: Faker::FunnyName.name )
end


# Song data
1000.times do
    Song.create(title: Faker::Music::RockBand.song, artist: Faker::Music.band, genre: Faker::Music.genre)
end


# Rating data
1000.times do
    Collection.create(song_rating: rand(1..5), song_id: Song.ids.sample, user_id: User.ids.sample)
end



puts "✅ Done seeding!"
