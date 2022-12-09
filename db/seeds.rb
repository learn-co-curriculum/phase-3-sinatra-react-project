puts "Clearing the database..."
Review.destroy_all
Album.destroy_all
Band.destroy_all
puts "Database Cleared!"


puts "creating band"

b1 = Band.create(artist_name: "Julian Lage", genre: "Jazz")
b2 = Band.create(artist_name: "Linkin Park", genre: "Nu Metal")
b3 = Band.create(artist_name: "The Who", genre: "Hard Rock")
b4 = Band.create(artist_name: "Brad Mehldau", genre: "Progressive Rock")


puts "band created"

puts "creating album data"

Album.create([
    {
    title: "View With A Room",
    image_url: "https://cdn.shopify.com/s/files/1/1418/3572/products/Album-Art.png?v=1655395606",
    catalog_number: "B0B4FV36ZS",
    band_id: b1.id
},
{
    title: "Hybrid Theory",
    image_url: "https://beatsperminute.com/wp-content/uploads/2020/10/linkin-park-hybrid-theory.jpg",
    catalog_number: "B00004Z459",
    band_id: b2.id
},
{
    title: "It's Hard",
    image_url: "https://m.media-amazon.com/images/I/71hBf-lAsjL._SL1098_.jpg",
    catalog_number: "B000002P6S",
    band_id: b3.id
},
{
    title: "Jacob's Ladder",
    image_url: "https://cdn2.jazztimes.com/2022/04/brad-mehldau-jacobs-ladder.jpg",
    catalog_number: "B000002P6S",
    band_id: b4.id
},
])

puts "album data created"

puts "Collecting Reviews"

Review.create(album_id: Album.all.sample.id, comment: "Awful music, not even music", rating:1)
Review.create(album_id: Album.all.sample.id, comment: "Terrible", rating:3)
Review.create(album_id: Album.all.sample.id, comment: "This band is average", rating:5)
Review.create(album_id: Album.all.sample.id, comment: "I would pay to listen, but not too much", rating:7)
Review.create(album_id: Album.all.sample.id, comment: "Best ever", rating:9)
Review.create(album_id: Album.all.sample.id, comment: "Who knows, I know nothing about music, this could be genius!", rating:rand(1..10))

puts "Reviews are ready for display!"


puts "✅ Done seeding!"