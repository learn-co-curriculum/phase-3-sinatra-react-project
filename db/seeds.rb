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
meal32 = Meal.create(day_id: wednesday.id, meal_number: 2)
meal33 = Meal.create(day_id: wednesday.id, meal_number: 3)
meal41 = Meal.create(day_id: thursday.id, meal_number: 1)
meal42 = Meal.create(day_id: thursday.id, meal_number: 2)
meal43 = Meal.create(day_id: thursday.id, meal_number: 3)
meal51 = Meal.create(day_id: friday.id, meal_number: 1)
meal52 = Meal.create(day_id: friday.id, meal_number: 2)
meal53 = Meal.create(day_id: friday.id, meal_number: 3)
meal61 = Meal.create(day_id: saturday.id, meal_number: 1)
meal62 = Meal.create(day_id: saturday.id, meal_number: 2)
meal63 = Meal.create(day_id: saturday.id, meal_number: 3)
meal71 = Meal.create(day_id: sunday.id, meal_number: 1)
meal72 = Meal.create(day_id: sunday.id, meal_number: 2)
meal73 = Meal.create(day_id: sunday.id, meal_number: 3)
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