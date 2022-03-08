puts "🌱 Seeding spices..."

# Seed your database here
#Songs
s_bang = Song.create(title: "Bang!", album_id: okorc.id, artist_id: ajr.id, genre: "indie", youtube_link: "https://www.youtube.com/watch?v=4THFRpw68oQ", duration:170 )
s_sheep = Song.create(title: "Sheep", album_id: mtjoyalb.id, artist_id: mtjoy.id, genre: "indie", youtube_link: "https://www.youtube.com/watch?v=Xl1psdL6z0c", duration: 223)
s_atl = Song.create(title: "All Time Low", album_id: humancon.id, artist_id: jonbel.id, genre: "pop", youtube_link: "https://www.youtube.com/watch?v=AXnqkVTFUqY", duration: 218)
s_outro = Song.create(title: "Hand of God - Outro", album_id: humancon.id, artist_id: jonbel.id, genre: "pop", youtube_link: "https://www.youtube.com/watch?v=UYdmI0o3XNQ", duration: 338)

#Albums
okorc = Album.create(title: "OK ORCHESTRA", release_date: "2021", downloads: 1002992, duration: 2748 )
mtjoyalb = Album.create(title: "Mt. Joy", release_date: "2018", downloads: 22343, duration: 2669)
humancon = Album.create(title: "The Human Condition", release_date: "2016", downloads: 945322, duration: 3317)


#Artists
ajr = Artist.create(name: "AJR", followers: 2136144 , about: "Re-envisioning what pop can be in the 21st century, AJR unassumingly emerged as a ubiquitous hit-making outlier and one of the biggest indie bands in the world.")
mtjoy = Artist.create(name: "Mt. Joy", followers: 262914 , about: "When Mt. Joy came together to record their sophomore album, the band was in rough shape.")
jonbel = Artist.create(name: "Jon Bellion", followers:  1273298, about: "An ebullient performer known for his cross-pollinated brand of contemporary pop that touches upon R&B, hip-hop, and indie rock influences.")


#Playlist
# p1 = Playlist.create(user_id: u1.id , creation_date: Date.new , last_update: Date.new, duration: )

#User
u1 = User.create(user_name: "test_user", password: "test123", email: "test_user@test.com")

puts "✅ Done seeding!"
