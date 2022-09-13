puts "🌱 Seeding spices..."

# Seed your database here

Band.create(name: "Nickelback", genre:"Good")
Band.create(name: "Dehd", genre:"Indie")
Band.create(name: "Dijon", genre:"Indie")
Band.create(name: "Beyonce", genre:"Pop")
Band.create(name: "Doja Cat", genre:"Pop")
Band.create(name: "Willie Nelson", genre:"Country")
Band.create(name: "Kendrick Lamar", genre:"Rap")
Band.create(name: "Kamasi Washington", genre:"Jazz")
Band.create(name: "Youth Lagoon", genre:"Indie")
Band.create(name: "Big Thief", genre:"Rock")
Band.create(name: "Turnover", genre:"Alt")

City.create(name: "LA", state:"CA")
City.create(name: "Athens", state:"TX")
City.create(name: "Rome", state: "GA")
City.create(name: "Moscow", state:"ID")
City.create(name: "New Orleans", state:"LA")

Concert.create(date: "2/22/2023", city_id:1, band_id:1, venue_name: "The Spot", venue_type: "Local")
Concert.create(date: "4/14/2023", city_id:1, band_id:2, venue_name: "Megadome", venue_type: "Arena")
Concert.create(date: "6/1/2023", city_id:2, band_id:3, venue_name: "Hole in the Wall", venue_type: "Local")
Concert.create(date: "10/14/2030", city_id:2, band_id:4, venue_name: "Fox Theatre", venue_type: "Medium")
Concert.create(date: "12/1/2022", city_id:2, band_id:5, venue_name: "Red Bull Field", venue_type: "Arena")
Concert.create(date: "4/15/2023", city_id:2, band_id:6, venue_name: "Cityplex Center", venue_type: "Arena")
Concert.create(date: "3/14/2024", city_id:3, band_id:7, venue_name: "Paramount Theater", venue_type: "Medium")
Concert.create(date: "5/24/2024", city_id:3, band_id:8, venue_name: "Mohawk Club", venue_type: "Local")
Concert.create(date: "11/18/2023", city_id:5, band_id:9, venue_name: "Emos", venue_type: "Arena")
Concert.create(date: "11/18/2023", city_id:5, band_id:10, venue_name: "Scoot Inn", venue_type: "Medium")


Eatery.create(name: "Tacos Mas", cuisine_type: "Mexican", downtown?: false, address: "5514 MLK Blvd.", city_id:1)
Eatery.create(name: "Georgios", cuisine_type: "Italian", downtown?: true, address: "732 5th Ave.", city_id:1)
Eatery.create(name: "Splendid Sushi", cuisine_type: "Asian", downtown?: true, address: "3324 West St.", city_id:1)
Eatery.create(name: "Paneras Breads", cuisine_type: "Chain", downtown?: false, address: "5204 Suburbia", city_id:2)
Eatery.create(name: "Jack's Diner", cuisine_type: "American", downtown?: true, address: "2102 E 14th St.", city_id:3)
Eatery.create(name: "Joe's Crab Shack", cuisine_type: "Seafood", downtown?: true, address: "654 Waterway St.", city_id:3)
Eatery.create(name: "Rainforest Cafe", cuisine_type: "Chain", downtown?: false, address: "The Mall", city_id:4)
Eatery.create(name: "Glorias", cuisine_type: "Mexican", downtown?: false, address: "445 Lizard Lane", city_id:5)


puts "✅ Done seeding!"
