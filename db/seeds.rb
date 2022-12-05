puts "Clearing the database..."
Review.destroy_all
Album.destroy_all
User.destroy_all
puts "Database Cleared!"

puts "creating album data"
Album.create([
    {
    title: "View With A Room",
    genre: "Jazz",
    artist: "Julian Lage",
    image_url: "https://cdn.shopify.com/s/files/1/1418/3572/products/Album-Art.png?v=1655395606",
    catalog_number: "B0B4FV36ZS"
},
{
    title: "Hybrid Theory",
    genre: "Nu Metal",
    artist: "Linkin Park",
    image_url: "https://beatsperminute.com/wp-content/uploads/2020/10/linkin-park-hybrid-theory.jpg",
    catalog_number: "B00004Z459"
},
{
    title: "It's Hard",
    genre: "Hard Rock",
    artist: "The Who",
    image_url: "https://m.media-amazon.com/images/I/71hBf-lAsjL._SL1098_.jpg",
    catalog_number: "B000002P6S"
},
]
)

puts "album data created"

puts "Loading Userdata"
u1 = User.create(comment: "OMG! This is my favvvvv!")
u2 = User.create(comment: "Just a vibe...")
u3 = User.create(comment: "Old school always has a palce in my heart")
u4 = User.create(comment: "If you've never listened to this... Add it to the list!")
puts "Userdata loading completed!"

puts "Collecting Reviews"
Review.create(rating:7, album: Album.all.sample, user: u1)
Review.create(rating:7, album: Album.all.sample, user: u2)
Review.create(rating:7, album: Album.all.sample, user: u3)
Review.create(rating:7, album: Album.all.sample, user: u4)
puts "Reviews are ready for display!"

puts "✅ Done seeding!"