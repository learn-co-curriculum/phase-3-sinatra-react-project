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


Dish.create(name: "Shakshuka", food: "Eggs poached in a tomato sauce, with peppers, onion, garlic, and paprika", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://downshiftology.com/wp-content/uploads/2018/12/Shakshuka-19-500x500.jpg")
Dish.create(name: "Clafoutis", food: "Fresh fruit, covered with Flan, and baked", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190619-cherry-calfoutis-129-landscape-pf-1561753044.jpg?crop=0.606xw:0.909xh;0.0260xw,0.0571xh&resize=480:*")
Dish.create(name: "Banana & Blueberry Muffins", food: "Muffins with blueberries and bananas", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://bakerbynature.com/wp-content/uploads/2011/05/Blueberry-Muffins-1-of-1.jpg")
Dish.create(name: "Asparagus and Herb Fritatta", food: "Baked eggs with asparagus and herbs", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://static.diabetesfoodhub.org/system/thumbs/system/images/recipes/050-diabetic-asparagus-frittata_iStock874474148_022118_3885281428.jpg")
Dish.create(name: "Breakfast Smoothie", food: "Smoothie made with fresh seasonal berries", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://www.dinneratthezoo.com/wp-content/uploads/2018/05/blueberry-smoothie-5.jpg")
Dish.create(name: "Muffuletta Sandwich", food: "Muffuletta loaf with olive salad, salami, ham, swiss cheese, provolone, and mortadella", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img:"https://assets.epicurious.com/photos/57ab9c0d76d72b2d2bb0b45c/1:1/w_1280,c_limit/ba-muffuletta-081016.jpg" )
Dish.create(name: "Sweet & Sour Chicken", food: "Fried Chicken in a Sweet and Sour sauce, with mixed vegatables and rice", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://carlsbadcravings.com/wp-content/uploads/2020/03/Sweet-and-Sour-Chicken-v23.jpg")
Dish.create(name: "Falafel", food: "Fried Chickpea and herb fritters", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://downshiftology.com/wp-content/uploads/2019/07/Falafel-7-500x500.jpg")
Dish.create(name: "Bolognese", food: "Beef and Pork, slow cooked with tomato, vegtables, and herbs, served with pasta", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://images.themodernproper.com/billowy-turkey/production/posts/2019/Easy-Bolognese-10.jpg?w=1200&auto=compress%2Cformat&fit=crop&dm=1599767200&s=d6a6cb0e481ef102cce79117a0dda2fc")
Dish.create(name: "Chicken Parm", food:"Fried Chicken cutlet, covered in tomato sauce, and mozzarella", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://assets.bonappetit.com/photos/5ea8f0df16738800085ad5d2/1:1/w_2560%2Cc_limit/Chicken-Parmesean-Recipe-Lede.jpg")
Dish.create(name: "Italian Wedding Soup", food: "Soup with Meatballs, vegtables and pasta", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://thecozycook.com/wp-content/uploads/2019/10/Italian-Wedding-Soup-Recipe-700x916.jpg")
Dish.create(name: "Beef and Broccoli Stir-Fry", food: "Stir Fried sliced beef with broccoli served over rice", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://omnivorescookbook.com/wp-content/uploads/2022/05/220503_Beef-And-Broccoli_550.jpg")
Dish.create(name: "Lasagna", food: "Stacked and baked pasta, with layers of cheese and meat sauce", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://bakingmischief.com/wp-content/uploads/2021/11/easy-lasagna-image-square-2.jpg")
Dish.create(name: "Pizza", food: "Baked dough topped with tomato sauce and cheese", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "http://santuccispizza.com/wp-content/uploads/2019/04/santuccis-21-1024x683.jpg")
Dish.create(name: "Shepherd's Pie", food: "Ground lamb sauteed with vegtables, topped with potato and baked", day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample, img: "https://www.thewholesomedish.com/wp-content/uploads/2019/02/The-Best-Classic-Shepherds-Pie-550-500x500.jpg")





    # 21.times do
    #     Dish.create(name: Faker::Food.dish, food: Faker::Food.description, day_id: Day.all.ids.sample, meal_id: Meal.all.ids.sample)
    # end

puts "✅ Done seeding!"
#Need to have functionality to add recipies/foods to meals/ add meals to days, / 3 meals a day is wack. / 
#Remove meals/foods, from days/meals, see list of foods
#Types of foods? Protien, veg, carb?



#need to manually seed for dish images
#Faker::Food.description /// Faker::Food.dish