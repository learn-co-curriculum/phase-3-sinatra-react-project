puts "🌱 Seeding spices..."

# Seed your database here

#Towns
Town.create(name: "Fishers")
Town.create(name: "Carmel")
Town.create(name: "Noblesville")

#Playgrounds
Playground.create(name: "Brookschool Park", address: "11780 Brooks School Rd", town_id: 1 )
Playground.create(name: "Roy. G. Holland Memorial Park", address: "1 Park Dr", town_id: 1 )
Playground.create(name: "Westermeier Commons Playground & Splashpad", address: "920 Central Park Dr W", town_id: 2 )
Playground.create(name: "Carey Grove Park", address: "14001 Carey Rd", town_id: 2 )
Playground.create(name: "Finch Creek Park", address: "16233 Boden Rd", town_id: 3 )
Playground.create(name: "Dr. James A. Dillon Park", address: "6001 Edenshall Ln", town_id: 3 )



puts "✅ Done seeding!"
