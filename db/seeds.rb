puts "🌱 Seeding todos..."

Category.create(id: 0, category: "not assigned")
Category.create(id: 1, category: "chores")
Category.create(id: 2, category: "work")
Category.create(id: 3, category: "exercise")
Category.create(id: 4, category: "misc")

Todo.create(item: "clean bathroom", importance: "low", category_id: 1)
Todo.create(item: "finish project", importance: "high", category_id: 2)
Todo.create(item: "walk on treadmill", importance: "medium", category_id: 3)
Todo.create(item: "walk dog", importance: "medium", category_id: 4)


puts "✅ Done seeding!"
