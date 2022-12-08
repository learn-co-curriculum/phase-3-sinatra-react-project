puts "Clearing the database..."
Review.destroy_all
Album.destroy_all
Band.destroy_all
puts "Database Cleared!"


puts "creating band"

b1 = Band.create(artist_name: "Julian Lage", genre: "Jazz")
b2 = Band.create(artist_name: "Linkin Park", genre: "Nu Metal")
b3 = Band.create(artist_name: "The Who", genre: "Hard Rock")

puts "band created"

puts "Collecting Reviews"

Review.create(comment: "Awful music, not even music", rating:1)
Review.create(comment: "Terrible", rating:3)
Review.create(comment: "This band is average", rating:5)
Review.create(comment: "I would pay to listen, but not too much", rating:7)
Review.create(comment: "Best ever", rating:9)
Review.create(comment: "Who knows, I know nothing about music, this could be genius!", rating:rand(1..10))

puts "Reviews are ready for display!"

puts "creating album data"
Album.create([
    {
    title: "View With A Room",
    image_url: "https://cdn.shopify.com/s/files/1/1418/3572/products/Album-Art.png?v=1655395606",
    catalog_number: "B0B4FV36ZS",
    review: Review.third,
    band: b1
},
{
    title: "Hybrid Theory",
    image_url: "https://beatsperminute.com/wp-content/uploads/2020/10/linkin-park-hybrid-theory.jpg",
    catalog_number: "B00004Z459",
    review: Review.last,
    band: b2
},
{
    title: "It's Hard",
    image_url: "https://m.media-amazon.com/images/I/71hBf-lAsjL._SL1098_.jpg",
    catalog_number: "B000002P6S",
    review: Review.fourth,
    band: b3
},])
puts "album data created"

puts "✅ Done seeding!"