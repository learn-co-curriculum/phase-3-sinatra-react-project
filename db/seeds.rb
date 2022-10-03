puts "Creating catefory..."
Category.create(name: "Bathroom")
Category.create(name: "Kitchen")
Category.create(name: "Living Room")
Category.create(name: "Master Bedroom")
Category.create(name: "Guest BedRoom")
Category.create(name: "Patio")
Category.create(name: "Garage")
Category.create(name: "Basement")
Category.create(name: "Frontyard")
Category.create(name: "Backyard")
Category.create(name: "Car")

puts "Creating user..."
User.create(first_name: "Leon", last_name: "Wong", password: "cool")
User.create(first_name: "Ian", last_name: "Gottheim", password: "woo")
User.create(first_name: "Parry", last_name: "Huang", password: "poo")
User.create(first_name: "Bob", last_name: "Dickinson", password: "something")
User.create(first_name: "Patrick", last_name: "Star", password: "cone")
User.create(first_name: "Matt", last_name: "Garcia", password: "taco")
User.create(first_name: "Franky", last_name: "Liu", password: "stone")
User.create(first_name: "Kerry", last_name: "Sasd", password: "asdaf")

puts "Creating task..."
Task.create(name: "Clean Sink", user_id: 1, category_id: 1, priority: 1, completed?:false)
Task.create(name: "Clean Tub", user_id: 1, category_id: 7, priority: 1, completed?:false)
Task.create(name: "Clean Mirror", user_id: 1, category_id: 6, priority: 1, completed?:false)
Task.create(name: "Clean Dishes", user_id: 2, category_id: 2, priority: 2, completed?:false)
Task.create(name: "Caulk Baseboard", user_id: 2, category_id: 4, priority: 9, completed?:false)
Task.create(name: "Sweep Floor", user_id: 3, category_id: 5, priority: 6, completed?:false)
Task.create(name: "Mop Floor", user_id: 4, category_id: 3, priority: 5, completed?:false)
Task.create(name: "Vacuum Floor", user_id: 4, category_id: 4, priority: 4, completed?:false)
Task.create(name: "Vacuum Car", user_id: 5, category_id: 11, priority: 5, completed?:false)
Task.create(name: "Fix Roof", user_id: 6, category_id: 8, priority: 8, completed?:false)
Task.create(name: "Replace Insulation", user_id: 7, category_id: 7, priority: 7, completed?:false)
Task.create(name: "Paint Walls", user_id: 5, category_id: 7, priority: 7, completed?:false)
Task.create(name: "Mow Grass", user_id: 5, category_id: 9, priority: 6, completed?:false)
Task.create(name: "Rake Grass", user_id: 5, category_id: 10, priority: 7, completed?:false)

puts "Seeding done!"

