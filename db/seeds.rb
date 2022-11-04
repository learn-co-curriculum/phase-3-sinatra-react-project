puts "🌱 Seeding spices..."

# Seed your database here

g1 = Table.create(table_number: rand(1..20))
g2 = Table.create(table_number: rand(1..20))

Guest.create(name: "Mr. and Mrs. Young", number_of_guests: 4, reservation: "06:45", notes: "Guest arriving with children", table_id: g1.id)
Guest.create(name: "Mr. and Mrs. Musks", number_of_guests: 2, reservation: "06:30", notes: "Celebrating 25th anniversary", table_id: g1.id)

puts "✅ Done seeding!"
