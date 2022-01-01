puts "🌱 Seeding spices..."

Category.create(category: "chores")
Category.create(category: "work")
Category.create(category: "exercise")
Category.create(category: "misc")

Todo.create(item: "clean bathroom", importance: "low", category_id: 1)
Todo.create(item: "finish project", importance: "high", category_id: 2)
Todo.create(item: "walk on treadmill", importance: "medium", category_id: 3)
Todo.create(item: "walk dog", importance: "medium", category_id: 4)


puts "✅ Done seeding!"
