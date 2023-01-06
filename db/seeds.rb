puts "🌱 Seeding..."
d1 = Day.create(day_of_week: "monday")
d2 = Day.create(day_of_week: "tuesday")
d3 = Day.create(day_of_week: "wednesday")
d4 = Day.create(day_of_week: "thursday")
d5 = Day.create(day_of_week: "friday")
d6 = Day.create(day_of_week: "saturday")
d7 = Day.create(day_of_week: "sunday")

c1 = Category.create(urgent: false)
c2 = Category.create(urgent: true)


t1 = Task.create(description: "this is a task that needs to be done", category_id: c1.id, day_id: d1.id)
t2 = Task.create(description: "wash dishes", category_id: c1.id, day_id: d3.id)
t3 = Task.create(description: "pickup groceries", category_id: c2.id, day_id: d2.id)
t4 = Task.create(description: "pick up medications", category_id: c1.id, day_id: d4.id)
t5 = Task.create(description: "water plants", category_id: c2.id, day_id: d6.id)
t6 = Task.create(description: "respond to emails", category_id: c2.id, day_id: d5.id)
t7 = Task.create(description: "watch the robot vacuum and mop the house. Smile because you aren't doing the work", category_id: c1.id, day_id: d7.id)




puts "✅ Done seeding!"
