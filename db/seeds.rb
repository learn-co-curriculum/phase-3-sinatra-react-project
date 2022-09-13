Day.destroy_all
Meal.destroy_all
Item.destroy_all 
puts "seeding days"
monday = Day.create(name: 'monday')
tuesday = Day.create(name: 'tuesday')
wednesday = Day.create(name: 'wednesday')
thursday = Day.create(name: 'thursday')
friday = Day.create(name: 'friday')
saturday = Day.create(name: 'saturday')
sunday = Day.create(name: 'sunday')
puts "done seeding days"
puts "seeding meals"

meal11 = Meal.create(day_id: monday.id, meal_number: 1)
meal12 = Meal.create(day_id: monday.id, meal_number: 2)
meal12 = Meal.create(day_id: monday.id, meal_number: 3)
meal21 = Meal.create(day_id: tuesday.id, meal_number: 1)
meal22 = Meal.create(day_id: tuesday.id, meal_number: 2)
meal23 = Meal.create(day_id: tuesday.id, meal_number: 3)
meal31 = Meal.create(day_id: wednesday.id, meal_number: 1)
meal32 = Meal.create(day_id: monday.id, meal_number: 2)
meal33 = Meal.create(day_id: wednesday.id, meal_number: 3)
puts "done seeding meals"
puts "seading items"
banana = Item.create(name: "banana")
potato = Item.create(name: "potato")
bacon = Item.create(name: "bacon")
apple = Item.create(name: "apple")
steak = Item.create(name: "steak")
sandwich = Item.create(name: "sandwich")
pizza = Item.create(name: "pizza")
sushi = Item.create(name: "sushi")
puts "done seeding items"