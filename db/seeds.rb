puts "🌱 Seeding spices..."

Day.create(name: "Monday")
Day.create(name: "Tuesday")
Day.create(name: "Wednesday")
Day.create(name: "Thursday")
Day.create(name: "Friday")
Day.create(name: "Saturday")
Day.create(name: "Sunday")


Meal.create(time: 8, type: "Breakfast")
Meal.create(time: 12, type: "Lunch")
Meal.create(time: 7, type: "Dinner")
Meal.create(time: 10, type: "Snack")
Meal.create(time: 3, type: "Snack")
Meal.create(time: 9, type: "Snack")
# Seed your database here

puts "✅ Done seeding!"
#Need to have functionality to add recipies/foods to meals/ add meals to days, / 3 meals a day is wack. / 
#Remove meals/foods, from days/meals, see list of foods
#Types of foods? Protien, veg, carb?




