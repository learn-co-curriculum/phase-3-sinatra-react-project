puts "🌱 Seeding spices..."

# Seed your database here
#Songs
s1 = Song.create(title: "", album_id: , artist_id: , genre: "", youtube_link: "", duration: )
s1 = Song.create(title: "", album_id: , artist_id: , genre: "", youtube_link: "", duration: )
s1 = Song.create(title: "", album_id: , artist_id: , genre: "", youtube_link: "", duration: )
s1 = Song.create(title: "", album_id: , artist_id: , genre: "", youtube_link: "", duration: )
s1 = Song.create(title: "", album_id: , artist_id: , genre: "", youtube_link: "", duration: )
s1 = Song.create(title: "", album_id: , artist_id: , genre: "", youtube_link: "", duration: )

#Albums
Album.create(title: "", release_date: "", downloads: , duration: )

#Artists
Artist.create(name: "", followers:  , about: "")

#Playlist
# p1 = Playlist.create(user_id: u1.id , creation_date: Date.new , last_update: Date.new, duration: )

#User
u1 = User.create(user_name: "test_user", password: "test123", email: "test_user@test.com")

puts "✅ Done seeding!"
