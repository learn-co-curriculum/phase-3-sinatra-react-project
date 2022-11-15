puts "🌱 Seeding spices..."

u1 = User.create(name: "Jimmy John")
u1 = User.create(name: "Johnny Jim")
u1 = User.create(name: "J J")
u1 = User.create(name: "JO JO")

d1 = Dish.create(name: "Gravy Carrot", cuisine: "Sad", ingredient_id: rand(1..4), user_id: rand(1..4), in_stock: true, comments: ["Why?", "Good with potatos"], times_cooked:5, instructions:"Pour gravy on carrot")
d1 = Dish.create(name: "Baked Potato", cuisine: "Sad", ingredient_id: rand(1..4), user_id: rand(1..4), in_stock: true, comments: ["MMM... Potato", "Starchy", "Baked, fried or raw, you can't go wrong!"], times_cooked:5, instructions:"Bake in oven")
d1 = Dish.create(name: "Loaded Potato", cuisine: "Sad", ingredient_id: rand(1..4), user_id: rand(1..4), in_stock: true, comments: ["Loaded? More like UN-loaded", "just get a plain potato"], times_cooked:1, instructions:"Bake potato, add peppers and gravy")
d1 = Dish.create(name: "Plain Carrot", cuisine: "Sad", ingredient_id: rand(1..4), user_id: rand(1..4), in_stock: true, comments: ["MMM... Carrot", "Crunchy", "IT'S RAW!"], times_cooked:5, instructions:"Just eat it")
d1 = Dish.create(name: "Gravy", cuisine: "Sad", ingredient_id: rand(1..4), user_id: rand(1..4), in_stock: true, comments: ["MMM... Gravy", "Perfect to wash down the Carrot!"], times_cooked:6, instructions:"Cook in pot, then drink")


i1 = Ingredient.create(name: "Carrot", quantity: 2, dish_id: rand(1..5), user_id: rand(1..4), in_stock: true)
i1 = Ingredient.create(name: "Green Pepper", quantity: 4, dish_id: rand(1..5), user_id: rand(1..4), in_stock: true)
i1 = Ingredient.create(name: "Potato", quantity: 3, dish_id: rand(1..5), user_id: rand(1..4), in_stock: true)
i1 = Ingredient.create(name: "Gravy", quantity: 6, dish_id: rand(1..5), user_id: rand(1..4), in_stock: true)




puts "✅ Done seeding!"
