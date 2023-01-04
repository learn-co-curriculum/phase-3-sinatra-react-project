puts "🌱 Seeding spices..."

puts "destroying all"
Owner.destroy_all
MaintenanceRequest.destroy_all
Unit.destroy_all
puts "DESTROYED!1! AHHH NOOOOOOOO"

puts "seeding owners"
o1 = Owner.create(name: "Kyle Rieman", total_units_owned: 3)
o2 = Owner.create(name: "Joe Decker", total_units_owned: 2)
o3 = Owner.create(name: "Keith Strausser", total_units_owned: 1)
o4 = Owner.create(name: "Clay Henry", total_units_owned: 1)
o5 = Owner.create(name: "Bob Brady", total_units_owned: 1)
puts "SLUMLORDS UNITE!"

puts "seeding maintenance requests"
m1 = MaintenanceRequest.create()





puts "✅ Done seeding!"
