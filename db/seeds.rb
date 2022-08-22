User.destroy_all
Task.destry_all

puts "🌱 Seeding spices..."
User.create(
    user_name: "Yari"
)

categories = ["House", "Yard", "Groceries", "Park", "Pet"]

Task.create(
    title: "Laundry",
    description: "Use a little bit of soap.",
    category: categories.sample,
    user_id: 1
)

puts "✅ Done seeding!"
