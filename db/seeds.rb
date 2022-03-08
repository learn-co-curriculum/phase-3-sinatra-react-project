puts "🌱 Seeding spices..."

# Seed your database here

#Artists
ajr = Artist.create(name: "AJR", followers: 2136144 , about: "Re-envisioning what pop can be in the 21st century, AJR unassumingly emerged as a ubiquitous hit-making outlier and one of the biggest indie bands in the world.")
mtjoy = Artist.create(name: "Mt. Joy", followers: 262914 , about: "When Mt. Joy came together to record their sophomore album, the band was in rough shape.")
jonbel = Artist.create(name: "Jon Bellion", followers:  1273298, about: "An ebullient performer known for his cross-pollinated brand of contemporary pop that touches upon R&B, hip-hop, and indie rock influences.")
isley = Artist.create(name: "The Isley Brothers", followers: 20012331  , about: "A vocal trio consisting of brothers O'Kelly Isley Jr., Rudolph Isley and Ronald Isley in the 1950s.")
beatles = Artist.create(name: "The Beatles", followers: 202131  , about: "An English rock band, formed in Liverpool in 1960, widely considered one of the most influential groups of all time.")
steve =  Artist.create(name: "Steve Lacy", followers: 142131  , about: "An American musician, singer, songwriter, and record producer. He was born in Compton, California, and gained recognition as the guitarist of the R&B group the Internet in 2015.") 

#Albums
okorc = Album.create(title: "OK ORCHESTRA", artist_id: ajr.id, release_date: "2021", downloads: 1002992, duration: 2748 )
mtjoyalb = Album.create(title: "Mt. Joy", artist_id: mtjoy.id, release_date: "2018", downloads: 22343, duration: 2669)
humancon = Album.create(title: "The Human Condition", artist_id: jonbel.id, release_date: "2016", downloads: 945322, duration: 3317)
guns = Album.create(title: "Go For Your Guns", artist_id: isley.id, release_date: "1977", downloads: 25354, duration: 2005)
strawberry = Album.create(title: "Strawberry Fields Forever / Penny Lane", artist_id: beatles.id , release_date: "1967", downloads: 2532154, duration: 449)
demo = Album.create(title: "Steve Lacy Demo", artist_id: steve.id , release_date: "2017", downloads: 233254, duration: 813)

#Songs
s_footsteps = Song.create(title: "Footsteps in the Dark", album_id: guns.id, genre: "soul", youtube_link: "https://www.youtube.com/watch?v=Dyq9zlYMw9g&ab_channel=TheIsleyBrothers-Topic", duration: 306)
s_bang = Song.create(title: "Bang!", album_id: okorc.id, genre: "indie", youtube_link: "https://www.youtube.com/watch?v=4THFRpw68oQ", duration:170 )
s_sheep = Song.create(title: "Sheep", album_id: mtjoyalb.id, genre: "indie", youtube_link: "https://www.youtube.com/watch?v=Xl1psdL6z0c", duration: 223)
s_atl = Song.create(title: "All Time Low", album_id: humancon.id, genre: "pop", youtube_link: "https://www.youtube.com/watch?v=AXnqkVTFUqY", duration: 218)
s_outro = Song.create(title: "Hand of God - Outro", album_id: humancon.id, genre: "pop", youtube_link: "https://www.youtube.com/watch?v=UYdmI0o3XNQ", duration: 338)
s_strawberry = Song.create(title: "Strawberry Fields Forever", album_id: strawberry.id ,  genre: "rock", youtube_link: "https://www.youtube.com/watch?v=HtUH9z_Oey8&ab_channel=TheBeatlesVEVO", duration: 263)
s_red = Song.create(title: "Dark Red", album_id: demo.id ,  genre: "indie", youtube_link: "https://www.youtube.com/watch?v=L0wusEVceek&ab_channel=SteveLacy-Topic", duration: 173)

#Playlist
# p1 = Playlist.create(user_id: u1.id , creation_date: Date.new , last_update: Date.new, duration: )

#User
u1 = User.create(user_name: "test_user", password: "test123", email: "test_user@test.com")

puts "✅ Done seeding!"
