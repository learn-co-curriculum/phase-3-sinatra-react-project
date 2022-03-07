puts "🌱 Seeding spices..."

# Seed your database here

a1 = Architect.create(full_name: , style: , url: )
a2 = Architect.create(full_name: , style: , url: )
a3 = Architect.create(full_name: , style: , url: )
a4 = Architect.create(full_name: , style: , url: )
a5 = Architect.create(full_name: , style: , url: )

c1 = City.create(name: , url: )
c2 = City.create(name: , url: )
c3 = City.create(name: , url: )
c4 = City.create(name: , url: )
c5 = City.create(name: , url: )

Building.create(name: , opened: , stories: , height: , architect_id: , city_id: , style: , map_location: , url: )
Building.create(name: , opened: , stories: , height: , architect_id: , city_id: , style: , map_location: , url: )
Building.create(name: , opened: , stories: , height: , architect_id: , city_id: , style: , map_location: , url: )
Building.create(name: , opened: , stories: , height: , architect_id: , city_id: , style: , map_location: , url: )
Building.create(name: , opened: , stories: , height: , architect_id: , city_id: , style: , map_location: , url: )

puts "✅ Done seeding!"
