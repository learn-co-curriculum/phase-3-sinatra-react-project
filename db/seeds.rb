puts "Clearing the database..."
Review.destroy_all
Album.destroy_all
User.destroy_all
puts "Database Cleared!"

puts "creating album data"
Album.create!([
    {
    title: "View With A Room"
    genre: "Jazz"
    artist: "Julian Lage"
    image_url: "https://cdn.shopify.com/s/files/1/1418/3572/products/Album-Art.png?v=1655395606"
    rating:
    catalog_number: "B0B4FV36ZS"
},
{
    title: "Hybrid Theory"
    genre: "Nu Metal"
    artist: "Linkin Park"
    image_url: "https://beatsperminute.com/wp-content/uploads/2020/10/linkin-park-hybrid-theory.jpg"
    rating:
    catalog_number: "B00004Z459"
},
{
    title: "It's Hard"
    genre: "Hard Rock"
    artist: "The Who"
    image_url: "https://m.media-amazon.com/images/I/71hBf-lAsjL._SL1098_.jpg"
    rating:
    catalog_number: "B000002P6S"
},
{
    title: "Dark Side of the Moon"
    genre: "Progressice Rock"
    artist: "Pink Floyd"
    image_url: "https://miro.medium.com/max/1400/1*8FkvzbSdSJ4HNxtuZo5kLg.jpeg"
    rating:
    catalog_number: "B000002U82"
},
{
    title: "Freeway"
    genre: "Folk Rock"
    artist: "Pieta Brown"
    image_url: "https://m.media-amazon.com/images/I/61K48XXlY5L._SL1500_.jpg"
    rating:
    catalog_number: "B07VGTYDLB"
},
{
    title: "Europe '72"
    genre: "Jam Rock"
    artist: "Grateful Dead"
    image_url: "https://m.media-amazon.com/images/I/719QxU1VGML._SL1500_.jpg"
    rating:
    catalog_number: "B09XFDN343"
},
{
    title: "From Michigan With Love"
    genre: "Synth Pop"
    artist: "Quinn XCII"
    image_url: "https://i.discogs.com/582l8awSCH1qz4AvGskRRXWtU3vbXf8tz1bAehywM8I/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE1NjAy/MzU1LTE1OTQzNTUz/MzUtMTA3OC5wbmc.jpeg"
    rating:
    catalog_number: ""
},
])
end
puts "album data created"

puts "Loading Userdata"
u1 = User.create(comment: "OMG! This is my favvvvv!")
u2 = User.create(comment: "Just a vibe...")
u3 = User.create(comment: "Old school always has a palce in my heart")
u4 = User.create(comment: "If you've never listened to this... Add it to the list!")
puts "Userdata loading completed!"

puts "Collecting Reviews"
Review.create(rating:7, album: album.all.sample, user: u1)
Review.create(rating:7, album: album.all.sample, user: u2)
Review.create(rating:7, album: album.all.sample, user: u3)
Review.create(rating:7, album: album.all.sample, user: u4)
puts "Reviews are ready for display!"

puts "✅ Done seeding!"