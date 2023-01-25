puts "🌱 Seeding bars..."
whitehorse = Bar.create(name: "White Horse Tavern", category: "Tavern", price: "$", closing_time: "0200", location: "25 Bridge St, New York, NY 10004")
tavernreade = Bar.create(name: "Tavern On Reade", category: "Tavern", price: "$$", closing_time: "0200", location: "59 Reade St, New York, NY 10007")
broadstone = Bar.create(name: "Broadstone Bar & Kitchen", category: "Pub", price: "$$", closing_time: "0100", location: "88 Broad St, New York, NY 10004")
rabbit = Bar.create(name: "The Dead Rabbit", category: "Pub", price: "$$", closing_time: "0300", location: "30 Water St, New York, NY 10004")
apotheke = Bar.create(name: "Apotheke Chinatown", category: "Cocktail Bar", price: "$$$", closing_time: "0200", location: "9 Doyers St, New York, NY 10013")
se = Bar.create(name: "Split Eights", category: "Cocktail Bar", price: "$$$", closing_time: "0200", location: "40 Exchange Place Ground Floor, New York, NY 10005")
harry = Bar.create(name: "Harry's Side Bar", category: "Wine Bar", price: "$$$$", closing_time: "0100", location: "62 Stone St, New York, NY 10004")
ten = Bar.create(name: "The Ten Bells", category: "Wine Bar", price: "$$", closing_time: "0200", location: "247 Broome St, New York, NY 10002")
jeremy = Bar.create(name: "Jeremy's Ale House", category: "Dive Bar", price: "$", closing_time: "2300", location: "228 Front St, New York, NY 10038")
clock = Bar.create(name: "Clockwork Bar", category: "Dive Bar", price: "$", closing_time: "0400", location: "21 Essex St, New York, NY 10002")
story = Bar.create(name: "Overstory", category: "Hotel Bar", price: "$$$$", closing_time: "0000", location: "70 Pine St 64th Floor, New York, NY 10005")
ready = Bar.create(name: "The Ready Rooftop Bar", category: "Hotel Bar", price: "$$", closing_time: "2200", location: "112 E 11th St, New York, NY 10003")

puts "🌱 Seeding users..."
joey = User.create(display_name: "Joey", username: "jb110", password: "abc123")
billy = User.create(display_name: "Billy", username: "bj011", password: "123abc")


puts "🌱 Seeding reviews..."
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: whitehorse.id, user_id: joey.id)
Review.create(star_rating: 3.2, content: "blah blah bleh", bar_id: ready.id, user_id: billy.id)
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: clock.id, user_id: billy.id)
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: se.id, user_id: joey.id)
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: whitehorse.id, user_id: billy.id)

# puts "🌱 Seeding favorite bars..."
# FavoriteBar.create(bar_name: "Split Eights", user_id: joey.id, bar_id: se.id)

# puts "🌱 Seeding bar_crawls..."
# BarCrawl.create()
puts "✅ Done seeding!"

