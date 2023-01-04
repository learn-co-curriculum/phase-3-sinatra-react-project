puts "🌱 Seeding..."

t1 = Task.create(description: "this is a task that needs to be done")
t2 = Task.create(description: "wash dishes")
t3 = Task.create(description: "pickup groceries")
t4 = Task.create(description: "pick up medications")
t5 = Task.create(description: "water plants")
t6 = Task.create(description: "respond to emails")
t7 = Task.create(description: "watch the robot vacuum and mop the house. Smile because you aren't doing the work")

d1 = Day.create(day_of_week: "monday")
d2 = Day.create(day_of_week: "tuesday")
d3 = Day.create(day_of_week: "wednesday")
d4 = Day.create(day_of_week: "thursday")
d5 = Day.create(day_of_week: "friday")
d6 = Day.create(day_of_week: "saturday")
d7 = Day.create(day_of_week: "sunday")

c1 = Category.create(urgent: false)
c2 = Category.create(urgent: true)



puts "✅ Done seeding!"
