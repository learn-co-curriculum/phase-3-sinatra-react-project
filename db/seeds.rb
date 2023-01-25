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
joey = User.create(display_name: "Joey", username: "jb110", password: "011bj")
jason = User.create(display_name: "Jason", username: "jm015", password: "510mj")
tomer = User.create(display_name: "Tomer", username: "tt016", password: "610tt")
kevin = User.create(display_name: "Kevin", username: "km022", password: "220mk")
dan = User.create(display_name: "Daniel", username: "dy008", password: "800yd")
avi = User.create(display_name: "Avi", username: "ar029", password: "920ra")
adam = User.create(display_name: "Adam", username: "af017", password: "710fa")
james = User.create(display_name: "James", username: "jp028", password: "820pj")
olivia = User.create(display_name: "Olivia", username: "or012", password: "210ro")
vero = User.create(display_name: "Veronique", username: "vc004", password: "400cv")
sophia = User.create(display_name: "Sophia", username: "sb030", password: "030bs")
diana = User.create(display_name: "Diana", username: "dp026", password: "620pd")


puts "🌱 Seeding reviews..."
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: story.id, user_id: joey.id)
Review.create(star_rating: 3.0, content: "blah blah bleh", bar_id: apotheke.id, user_id: joey.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: clock.id, user_id: avi.id)
Review.create(star_rating: 5.0, content: "blah blah bleh", bar_id: se.id, user_id: joey.id)
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: whitehorse.id, user_id: adam.id)
Review.create(star_rating: 2.5, content: "blah blah bleh", bar_id: rabbit.id, user_id: adam.id)
Review.create(star_rating: 3.0, content: "blah blah bleh", bar_id: jeremy.id, user_id: adam.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: ten.id, user_id: vero.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: tavernreade.id, user_id: vero.id)
Review.create(star_rating: 4.5, content: "blah blah bleh", bar_id: se.id, user_id: tomer.id)
Review.create(star_rating: 2.5, content: "blah blah bleh", bar_id: ten.id, user_id: jason.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: harry.id, user_id: kevin.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: harry.id, user_id: sophia.id)
Review.create(star_rating: 5.0, content: "blah blah bleh", bar_id: whitehorse.id, user_id: james.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: ready.id, user_id: james.id)
Review.create(star_rating: 4.0, content: "blah blah bleh", bar_id: jeremy.id, user_id: diana.id)
Review.create(star_rating: 5.0, content: "blah blah bleh", bar_id: whitehorse.id, user_id: joey.id)
Review.create(star_rating: 2.5, content: "blah blah bleh", bar_id: clock.id, user_id: kevin.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: story.id, user_id: jason.id)
Review.create(star_rating: 0.5, content: "blah blah bleh", bar_id: rabbit.id, user_id: sophia.id)
Review.create(star_rating: 3.5, content: "blah blah bleh", bar_id: broadstone.id, user_id: olivia.id)
Review.create(star_rating: 0.0, content: "blah blah bleh", bar_id: tavernreade.id, user_id: dan.id)

puts "🌱 Seeding favorite bars..."
FavoriteBar.create(user_id: joey.id, bar_id: se.id)
FavoriteBar.create(user_id: joey.id, bar_id: whitehorse.id)
FavoriteBar.create(user_id: james.id, bar_id: whitehorse.id)
FavoriteBar.create(user_id: james.id, bar_id: ready.id)
FavoriteBar.create(user_id: vero.id, bar_id: ten.id)
FavoriteBar.create(user_id: adam.id, bar_id: rabbit.id)
FavoriteBar.create(user_id: adam.id, bar_id: whitehorse.id)
FavoriteBar.create(user_id: kevin.id, bar_id: clock.id)
FavoriteBar.create(user_id: dan.id, bar_id: tavernreade.id)
FavoriteBar.create(user_id: diana.id, bar_id: jeremy.id)
FavoriteBar.create(user_id: sophia.id, bar_id: rabbit.id)


puts "🌱 Seeding bar_crawls..."
BarCrawl.create(bar_crawl_name: "Shots?", user_id: james.id bar1_id: ready.id, bar2_id: whitehorse.id, bar3_id: rabbit.id, bar4_id: ten.id, bar5_id: apotheke.id)
BarCrawl.create(bar_crawl_name: "Vamos a la fiesta", user_id: vero.id bar1_id: tavernreade.id, bar2_id: se.id, bar3_id: clock.id, bar4_id: jeremy.id, bar5_id: nil)
BarCrawl.create(bar_crawl_name: "Friyay", user_id: avi.id bar1_id: rabbit.id, bar2_id: broadstone.id, bar3_id: clock.id, bar4_id: nil, bar5_id: nil)
BarCrawl.create(bar_crawl_name: "I guess I can go out", user_id: tomer.id bar1_id: jeremy.id, bar2_id: harry.id, bar3_id: story.id, bar4_id: se.id, bar5_id: nil)


puts "✅ Done seeding!"

