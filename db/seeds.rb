puts "🌱 Seeding spices..."

u1 = User.create(name: "Jimmy John")
u2 = User.create(name: "Johnny Jim")
u3 = User.create(name: "J J")
u4 = User.create(name: "Jen")
u5 = User.create(name: "Jeremy")
u6 = User.create(name: "Joe")
u7 = User.create(name: "Jack")

c1 = Cuisine.create(name: "Italian")
c2 = Cuisine.create(name: "Mexican")
c3 = Cuisine.create(name: "Irish")
c4 = Cuisine.create(name: "Thai")
c5 = Cuisine.create(name: "Japanese")


d1 = Dish.create(name: "Gravy Carrot", times_cooked:5, instructions:"Pour gravy on carrot", cuisine_id: rand(1..5))
d2 = Dish.create(name: "Baked Potato", times_cooked:5, instructions:"Bake in oven", cuisine_id: rand(1..5))
d3 = Dish.create(name: "Loaded Potato", times_cooked:1, instructions:"Bake potato, add peppers and gravy", cuisine_id: rand(1..5))
d4 = Dish.create(name: "Plain Carrot", times_cooked:5, instructions:"Just eat it", cuisine_id: rand(1..5))
d5 = Dish.create(name: "Gravy", times_cooked:6, instructions:"Cook in pot, then drink", cuisine_id: rand(1..5))


i1 = Ingredient.create(name: "Carrot")
i2 = Ingredient.create(name: "Green Pepper")
i3 = Ingredient.create(name: "Potato")
i4 = Ingredient.create(name: "Gravy")
i5 = Ingredient.create(name: "Honey")
i6 = Ingredient.create(name: "Habenero")
i7 = Ingredient.create(name: "Pickle")


ui1 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)
ui2 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)
ui3 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)
ui4 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)
ui5 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)
ui6 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)
ui7 = UserIngredient.create(user_id: rand(1..7), ingredient_id: rand(1..7), quantity: rand(1..10), in_stock: true)

di1 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))
di2 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))
di3 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))
di4 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))
di5 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))
di6 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))
di7 = DishIngredient.create(ingredient_id: rand(1..7), dish_id: rand(1..5))

ud1 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))
ud2 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))
ud3 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))
ud4 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))
ud5 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))
ud6 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))
ud7 = UserDish.create(user_id: rand(1..7), dish_id: rand(1..5))






puts "✅ Done seeding!"
