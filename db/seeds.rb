puts "🌱 Seeding spices..."

# Seed your database here

fridge1 = Fridge.create(location: "TEST_1")
fridge2 = Fridge.create(location: "TEST_2")

user1 = User.create(first_name: "Spencer", last_name: "Johnson", state: "MO")
user2 = User.create(first_name: "Michael", last_name: "Dally", state: "PA")
user3 = User.create(first_name: "Charlie", last_name: "Kozey", state: "NY")

food1 = Food.create(user_id: user1.id, fridge_id: fridge1.id, name: "potatoes", quantity: 3, category: "vegetagle")
food2 = Food.create(user_id: user2.id, fridge_id: fridge2.id, name: "milk", quantity: 1, category: "dairy")
food3 = Food.create(user_id: user3.id, fridge_id: fridge2.id, name: "green pepper", quantity: 4, category: "vegetagle")

puts "✅ Done seeding!"
