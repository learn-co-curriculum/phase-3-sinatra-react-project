puts "🌱 Seeding spices..."

# Seed your database here
List.create(name: "Superhero")
List.create(name: "Alter Ego")

Task.create(name: "Develop new training schedule for Robin", list_id: 1)
Task.create(name: "Get the oil changed in the Batmobile", list_id: 1)
Task.create(name: "Foil the Joker's plans (AGAIN) at 7PM", list_id: 1)
Task.create(name: "Attend stupid board meeting at Wayne Enterprises", list_id: 2)
Task.create(name: "Check in on new technological developments at Wayne Industries", list_id: 2)
Task.create(name: "Leave flowers on mom and dad's graves", list_id: 2)
Task.create(name: "Ask Alfred to have my Bat Suit dry cleaned", list_id: 1)
Task.create(name: "Rechedule dinner plans with Linda", list_id: 2)
Task.create(name: "Practice roundhouse kicks", list_id: 1)
Task.create(name: "Practice stunt driving on the Batblade", list_id: 1)
Task.create(name: "Ask Alfred to schedule a Halloween PR dinner event", list_id: 2)
Task.create(name: "Figure out what to get Alfred for his birthday", list_id: 2)
Task.create(name: "Get estimate on construction costs for new pool", list_id: 2)
Task.create(name: "Do some breathwork #selfcare", list_id: 2)
Task.create(name: "10PM - *surveillance* of CatWoman...", list_id: 1)
Task.create(name: "Workshop the Batman voice to sound less lame", list_id: 1)

puts "✅ Done seeding!"
