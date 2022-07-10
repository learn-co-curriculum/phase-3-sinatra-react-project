puts "🌱 Seeding spices..."

Day.create(name: "Monday")
Day.create(name: "Tuesday")
Day.create(name: "Wednesday")
Day.create(name: "Thursday")
Day.create(name: "Friday")
Day.create(name: "Saturday")
Day.create(name: "Sunday")


Meal.create(time: 8, tod: "am", name: "Breakfast")
Meal.create(time: 12, tod: "pm", name: "Lunch")
Meal.create(time: 7, tod: "pm", name: "Dinner")
Meal.create(time: 10, tod: "am", name: "Snack")
Meal.create(time: 3, tod: "pm", name: "Snack")
Meal.create(time: 9, tod: "pm", name: "Snack")
# Seed your database here

    42.times do
        Dish.create(name: Faker::Food.dish, food: Faker::Food.description, day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample)
    end

puts "✅ Done seeding!"
#Need to have functionality to add recipies/foods to meals/ add meals to days, / 3 meals a day is wack. / 
#Remove meals/foods, from days/meals, see list of foods
#Types of foods? Protien, veg, carb?




#Faker::Food.description /// Faker::Food.dish